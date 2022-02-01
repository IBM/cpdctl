import os
import ibm_boto3
import json
import pandas as pd
import requests
from botocore.client import Config
from ibm_watson_machine_learning import APIClient


### Function to get asset details using REST API. This won't be needed once python client adds attachment details in asset meta ###
def get_asset_details(client, asset_id, space_id):
    url = client.wml_credentials['url']
    request_url = os.path.join(url, 'v2/assets', asset_id + "?space_id=" + space_id)
    headers = client._get_headers()
    response = requests.get(request_url, headers=headers)
### Import CPD certificate or switch to cert verfication disabled      
###    response = requests.get(request_url, headers=headers, verify=False)
    if response.status_code != 200:
        print('Getting asset details failed.')
        raise Exception(response.text)
    return response.json()


### Function to upload data to cos ###
def upload_to_cos(properties, src_path, bucket_name, dest_path):
    service_endpoint = properties['url']
    aws_access_key_id = properties['access_key']
    aws_secret_access_key = properties['secret_key']
    cos_client = ibm_boto3.resource('s3',
                                    endpoint_url=service_endpoint,
                                    aws_access_key_id=aws_access_key_id,
                                    aws_secret_access_key=aws_secret_access_key)
    cos_client.meta.client.upload_file(src_path, bucket_name, dest_path)


# Authenticate to the Watson Machine Learning service on IBM Cloud Pak for Data.

username = 'PASTE YOUR USERNAME HERE'
password = 'PASTE YOUR PASSWORD HERE'
url = 'PASTE THE PLATFORM URL HERE'

wml_credentials = {
    "username": username,
    "password": password,
    "url": url,
    "instance_id": 'openshift',
    "version": '3.5'
}

client = APIClient(wml_credentials)

### Initialize directories ###
input_dir = os.environ['BATCH_INPUT_DIR']
work_dir = os.environ['WORKDIR']
jobs_payload_path = os.environ['JOBS_PAYLOAD_FILE']
input_data_path = os.path.join(input_dir, 'input_data.csv')

### Read scoring payload and get asset and space id ###
with open(jobs_payload_path) as f:
    scoring_payload = json.load(f)
asset_url = scoring_payload['scoring']['input_data_references'][0]['location']['href']
asset_parts = asset_url.split('/v2/assets/')[-1].split('?space_id=')
asset_id, space_id = asset_parts

### Set space and download ###
client.set.default_space(space_id)
client.data_assets.download(asset_id, filename=input_data_path)

### Copy to work directory. This is just a dummy code. Idea is to substitute this with ###
### user program logic and use the work directory as the place to put intermediate or final ###
### data that user will use ###
# shutil.copy(cos_file, work_dir)

### Get dest asset connection details ###
dest_asset_href = scoring_payload['scoring']['output_data_reference']['location']['href']
dest_asset_parts = dest_asset_href.split('/v2/assets/')[-1].split('?space_id=')
dest_asset_id, dest_space_id = dest_asset_parts

dest_asset_details = get_asset_details(client, dest_asset_id, dest_space_id)
conn_id = dest_asset_details['attachments'][0]['connection_id']
conn_details = client.connections.get_details(conn_id)
conn_properties = conn_details['entity']['properties']
conn_path = dest_asset_details['attachments'][0]['connection_path'].lstrip('/')

### Upload to COS ###
path_parts = conn_path.split('/')
bucket_name = path_parts[0]
dest_path = ''.join(path_parts[i] + '/' for i in range(1, len(path_parts))).rstrip('/')
upload_to_cos(conn_properties, input_data_path, bucket_name, dest_path)
