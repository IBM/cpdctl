# CPDCTL 
CPDCTL is a command-line interface (CLI) you can use to manage the lifecycle of a model from IBM Cloud Pak for Data 3.0.1.

Using the CLI you can manage configuration settings and automate an end-to-end flow that includes training a model, saving it, creating a deployment space, and deploying the model.

## Installation

Download the CLI from this repository:
https://github.com/IBM/cpdctl/releases/

Downloading binaries from non-trusted sources requires extentions of `cpdctl` access rules with `execute` permission:
```
$ chmod u+x cpdctl
```

Additionally, on OSX platform, if the security policy is set to trust only `App Store and identyfied developers`, the additional approval in `Security & Privacy` settings panel is required.


## Configuration
`cpdctl` CLI tool provides the following groups of commands for managing configuration:

```
$ cpdctl config
Manage Configuration

Usage:
  cpdctl config [command]

Available Commands:
  users       Manage users
  clusters    Manage clusters
  services    Manage services
  contexts    Manage contexts
``` 

#### Example

This example illustrates how to update a configuration by adding a user and assigning a context.

First, add a CPD user with name "qa-user":

```
$ cpdctl config users set qa-user --username=<username> --password=<password>
``` 

Next, add the cluster named "qa-cluster":

```
$ cpdctl config clusters set qa-cluster --user qa-user --url <cluster_url>
```

And finally, add the context named "qa-env":

```
$ cpdctl config contexts set qa-context --cluster qa-cluster
```

List spaces in qa-context:
```
$ cpdctl spaces list --context qa-context
```

Set default contenxt:

```
$ cpdctl config contexts use qa-context
```

Print list of contexts:

```
$ cpdctl config contexts list
Name     Cluster      User   Current   
qa-context   qa-cluster          *
```

You can specify the service configuration like this:

```
cpdctl config services set watson_machine_learning --cluster <cluster_name> --url <wml_url> --instance <wml_instance_id>
```


### Configuration with file

`cpdctl` uses the single configuration file that allows to store information about different contexts,
where each context can refer to different environment 

#### Configuration loading rules

1. If the --cpdconfig flag is set, the config file is loaded. For example:
   `cpdctl --cpdconfig=config.yaml config clusters list`
   File references on the command line are relative to the current working directory. 
2. The configuration file can be referenced by `CPDCONFIG` environment variable as well. For example:
    `CPDCONFIG=/opt/cpdctl/config.yaml cpdctl config clusters list`
3. Finally, if none of above is provided, the default configuration file location `$HOME/.cpdctl/config` is used. 


## Available commands
```
$ cpdctl --help

Usage:
  cpdctl [command]

Available Commands:
  config       Manage Configuration
  assets       Manage Assets
  projects     Manage Projects
  spaces       Manage Spaces
  wml          Manage Watson Machine Learning
  wos          Manage Watson OpenScale
  environments Manage environments
  version      Display the tool version
  help         Help about any command

Flags:
      --context string     
      --cpdconfig string   
  -h, --help               help for cpdctl

Use "cpdctl [command] --help" for more information about a command.
```

## Supported outputs
`cpdctl` supports three output formats: table (default), json, and yaml. Select the expected format with the `--output` flag. For example:
```
$ cpdctl spaces list --output json
```
The CLI also supports JMESPath query output customization. This example shows how to get an id of the first space programmatically:
```
$ cpdctl spaces list --output json -q 'resources[0].metadata.id'
```

## Usage

### Projects

- create a project
```
$ cpdctl projects create --name '<project_name>' --description '<project_description>' --storage '{"type": "assetfiles", "guid": "00000000-0000-0000-0000-000000000000", "resource_crn": "crn"}' --public false --generator 'CPDCTL CLI' --enforce_members true
```

- list projects
```
$ cpdctl projects list
```

- get project details
```
$ cpdctl projects get --project_id <project_id>
```

- update project
```
$ cpdctl projects update --project_id <project_id> --description <project_description> --public true --tools jupyter_notebooks,dashboards
```

- create project member
```
$ cpdctl projects members create --project_id <project_id> --members '[{"user_name":"<user_name>","id":"<user_id>","role":"editor","state":"ACTIVE","type":"user"},{"user_name":"<user_name>","id":"<user_id>","role":"viewer","state":"ACTIVE","type":"user"}]'
```

- list members in project
```
$ cpdctl projects members list --project_id <project_id>
```

- list members with `editor` or `viewer` role
```
$ cpdctl projects members list --project_id <project_id> --roles "editor,viewer"
```

- get member details
```
$ cpdctl projects members get --project_id <project_id> --user_name "<user_name>"
```

- update member
```
$ cpdctl projects members update --project_id <project_id> --members '[{"user_name":"<user_name>","role":"admin"},{"user_name":"<user_name>","role":"editor"}]'
```

- delete member
```
$ cpdctl projects members delete --project_id <project_id> --user_names "<user_name>"
```

- delete project
```
$ cpdctl projects delete --guid '<project_id>'
```

### Environments

- list environments
```
$ cpdctl environments list --project_id <project_id>
```

- create a new hardware specification
```
$ cpdctl environments hardware-specifications create --project_id <project_id> --name "<hw_spec_name>" --nodes '{"cpu": { "units": "1" }, "mem": { "size": "8Gi" } }'
```

- get details of hardware specification
```
$ cpdctl environments hardware-specifications get --project_id <project_id> --hardware_specification_guid <hw_spec_id>
```

- create a new package extension
```
$ cpdctl environments package-extensions create --name "<package_extention_name>" --description "<description>" --type "conda_yml" --project_id <project_id>
```

- get details of package extension
```
$ cpdctl environments package-extensions get --project_id <project_id> --package_extension_guid <package_extension_id>
```

- list software specifications
```
$ cpdctl environments software-specifications list --project_id <project_id>
```

- create a new software specification
```
$ cpdctl environments software-specifications create --name "Test SW Spec" --software_configuration '{ "included_packages": [] }' --base_software_specification '{"guid" : "<base_software_spec_id>", "href" : "<base_software_spec_href>"}' --project_id <project_id>
```

- get details of software specification
```
$ cpdctl environments software-specifications get --software_specification_guid <software_spec_id> --project_id <project_id>
```

- add package extention to software specification
```
$ cpdctl environments software-specifications add-package-extensions --package_extension_guid <package_extention_id> --project_id <project_id> --software_specification_guid <software_spec_id>
```

- create a new envrionment 
```
$ cpdctl environments create --project_id <project_id> --type "notebook" --name "<env_name>" --display_name "<display_name>" --hardware_specification '{"guid": "<hw_specification_id>"}' --software_specification '{"guid": "sw_specification_id"}'
```

- get environment details
```
$ cpdctl environments get --environment_guid <environment_id> --project_id <project_id>
```

- delete environment
```
$ cpdctl environments delete --environment_guid <environment_id> --project_id <project_id>
```

### Assets

- list data assets in project
```
$ cpdctl assets search --query "*:*" --project_id <project_id> --type_name data_asset
```

- list Watson Machine Learning models in project
```
$ cpdctl assets search --project_id <project_id> --type_name wml_model --query "*:*"
```

- list Watson Machine Learning pipelines in project
```
$ cpdctl assets search --project_id <project_id> --type_name wml_pipeline --query "*:*"
```

- upload file as data asset to project
```
$ cpdctl assets data-assets upload --project_id <project_id> --name <data_asset_name> --tag <asset_tag> --description <description> --file <file_path> --mime "text/csv" 
```

- download the asset attachment
```
$ cpdctl assets attachments download --project_id <project_id> --asset_id <asset_id> --attachment_id <attachment_id> --output_path <file_path>
```

- promote asset from project to space 
```
$ cpdctl assets promote --asset_id <asset_id> --project_id <project_id> --body '{"mode": 0, "space_id": "<space_id>"}'
```

- export assets from project
```
$ cpdctl assets exports start --assets '{"asset_ids":["<asset_id>"]}' --project_id <project_id> --output_file=./assets.zip
```

- import assets to space
```
$ cpdctl assets imports start --space_id <space_id> --import_file assets.zip
```

### Spaces

- spaces create
```
$ cpdctl spaces create --name <space_name> --description <space_description>
```

- spaces list
```
$ cpdctl spaces list
```

- get space details
```
$ cpdctl spaces get --space_id <space_id>
```

- update space
```
$ cpdctl spaces update --space_id '<space_id>' --json_patch '[{"op": "add", "path": "/description", "value": "<updated_description>"}]'
```

- create space member
```
$ cpdctl spaces members create --space_id <space_id> --members '[{"id": "<member_id>", "role": "viewer"}, {"id": "member_id", "role": "editor"}]'
```

- list space members
```
$ cpdctl spaces members list --space_id <space_id>
```

- update space member
```
$ cpdctl spaces members update --space_id <space_id> --member_id '<member_id>' --json_patch '[{"op": "replace", "path": "/role", "value": "editor"}]'
```

- delete space member
```
$ cpdctl spaces members delete --space_id <space_id> --member_id '<member_id>'
```

- delete space
```
$ spaces delete --space_id <space_id>
```

### WML

- models create
```
$ cpdctl wml models create --name <model_name> --space_id <space_id> --software_spec '{"name": "scikit-learn_0.20-py3.6"}' --type 'scikit-learn_0.20'
```

- models list
```
$ cpdctl wml models list --space_id <space_id>
```

- models get
```
$ cpdctl wml models get --model_id <model_id> --space_id <space_id>
```

- upload binary model content
```
$ cpdctl wml models upload-content --model_id <model_id> --body scikit_model.tar.gz --content_format 'binary' --space_id <space_id>
```

- download model content
```
$ cpdctl wml models download-content --model_id <model_id> --output_file scikit_model_download.tar.gz --space_id <space_id>
```

- create next version (revision) of the model
```
$ cpdctl wml models create-revision --model_id <model_id> --space_id <space_id>
```

- list model revisions
```
$ cpdctl wml models list-revisions --model_id <model_id> --space_id <space_id>
```

- create function
```
$ cpdctl wml functions create --name <function_name> --space_id <space_id> --software_spec '{"name": "ai-function_0.1-py3.6"}' --sample_scoring_input '{"input_data": [{"fields": ["name", "age", "occupation"], "values": [["john", 23, "student"], ["paul", 33, "engineer"]]}]}' --schemas '{"input": [{"id": "t1", "name": "Tasks", "fields": [{"name": "duration", "type": "number"}]}], "output": [{"id": "t1", "name": "Tasks", "fields": [{"name": "duration", "type": "number"}]}]}' --type 'python'
```

- list functions
```
$ cpdctl wml functions list --space_id <space_id>
```

- get function details
```
$ cpdctl wml functions get --function_id <function_id> --space_id <space_id>
```

- upload function code
```
$ cpdctl wml functions upload-code --function_id <function_id> --space_id <space_id> --upload_code scoring_function.py.gz
```

- download function code
```
$ cpdctl wml functions download-code --function_id <function_id> --space_id <space_id> --output_file scoring_function.py.gz --output json
```

- delete function
```
$ cpdctl wml functions delete --function_id <function_id> --space_id <space_id>
```

- create deployment
```
$ cpdctl wml deployments create --name <deployment_name> --online '{"description": "<deployment_description>"}' --asset '{"id": "<model_id>"}' --space_id <space_id>
```

- deployments list
```
$ cpdctl wml deployments list --space_id <space_id>
```

- update the deployment with new asset revision
```
$ cpdctl wml deployments update --deployment_id <deployment_id> --json_patch '[{"op": "replace", "path": "/asset", "value": {"id": "<model_id>", "rev": "<revision_number>"}}]' --space_id <space_id>
```

- compute predictions
```
$ cpdctl wml deployments compute-predictions --deployment_id <deployment_id> --input_data '[{"values": [[0.0, 0.0, 5.0]]}]' 
```

- create batch deployment
```
$ cpdctl wml deployments create --name <deployment_name> --batch '{}' --asset '{"id": "<model_id>"}' --hardware_spec '{"name": "S", "num_nodes": 1}' --space_id <space_id>
```

- create deployment job
```
$ cpdctl wml deployment-jobs create --deployment '{"id": "<deployment_id>"}' --scoring '{"input_data": [{"id": "", "values": [["Positive", 0.84, 0, 10], ["Positive", 0.78, 0, 10], ["Negative", 0.27, 0, 10]]}]}' --space_id <space_id>
```

- list deployment jobs
```
$ cpdctl wml deployment-jobs list --space_id <space_id>
```

- get deployment job details
```
$ cpdctl wml deployment-jobs get --job_id <deployment_job_id> --space_id <space_id>
```

- create deployment job definition
```
$ cpdctl wml deployment-job-definitions create --name <job_definition_name> --deployment '{"id": "<deployment_id>"}' --scoring '{"input_data": [{"id": "", "values": [["Positive", 0.84, 0, 10], ["Positive", 0.78, 0, 10], ["Negative", 0.27, 0, 10]]}]}' --space_id <space_id>
```

- list deployment job definitions
```
$ cpdctl wml deployment-job-definitions list --space_id <space_id>
```

- delete deployment job definition
```
$ cpdctl wml deployment-job-definitions delete --job_definition_id <job_definition_id> --space_id <space_id>

```
- delete deployment 
```
$ cpdctl wml deployments delete --deployment_id <deployment_id> --space_id <space_id>
```

- delete model
```
$ cpdctl wml models delete --model_id <model_id> --space_id <space_id>
```

## AutoAI scenario

This end-to-end scenario shows how to train an AutoAI experiment, save a pipeline as a model, and deploy the model. 

1. Create training pipeline
```
$ cpdctl wml pipelines create --name <pipeline_name> --space_id <space_id> --document '{"doc_type": "pipeline", "pipelines": [{"id": "autoai", "nodes": [{"id": "automl", "op": "kube", "parameters": {"optimization": {"compute_pipeline_notebooks_flag": true, "daub_adaptive_subsampling_max_mem_usage": 9000000000, "daub_include_only_estimators": ["LogisticRegressionEstimator"], "holdout_param": 0.1, "label": "Risk", "learning_type": "classification", "max_num_daub_ensembles": 1, "run_cognito_flag": true, "scorer_for_ranking": "precision"}, "output_logs": true, "stage_flag": true}, "runtime_ref": "autoai", "type": "execution_node"}], "runtime_ref": "hybrid"}], "primary_pipeline": "autoai", "runtimes": [{"app_data": {"wml_data": {"hardware_spec": {"name": "M"}}}, "id": "autoai", "name": "auto_ai.kb"}], "version": "2.0"}' --description '<pipeline_description>'
```

2. Upload training data asset
```
$ cpdctl assets data-assets upload --space_id <space_id> --file <training_dataset>.csv --mime 'text/csv' --origin_country us --tag '<asset_tag>'
```

3. Run AutoAI training
```
$ cpdctl wml trainings create --space_id <space_id> --name '<training_name>' --pipeline '{"id": "<training_pipeline_id>"}' --training_data_references '[{"connection": {}, "id": "<asset_id>", "location": {"href": "/v2/assets/<asset_id>?space_id=<space_id>"}, "type": "data_asset"}]' --results_reference '{"connection": {}, "location": {"path": "/spaces/<space_id>/assets/auto_ml"}, "type": "fs"}' --tags '<training_tag>'
```

4. Get training details
```
$ cpdctl wml trainings get --space_id <space_id> --training_id <training_id>
```

5. Download model trained by AutoAI
```
$ cpdctl assets files get --space_id <space_id> --path '<pipeline_path>/model.pickle' --output_file '<output_path>/model.pickle'
```

6. Download trained model pipeline
```
$ cpdctl assets files get --space_id <space_id> --path '<pipeline_path>/pipeline-model.json' --output_file '<output_path>/pipeline-model.json'
```

7. Create a model
```
$ cpdctl wml models create --name <model_name> --space_id <space_id> --type wml-hybrid_0.1 --label_column <label_column> --metrics '[<training_metrics>]' --software_spec '{"name": "hybrid_0.1"}' --tags '<model_tag>'
```

8. Prepare downloaded AutoAI pipeline and model
```
tar -czvf <model_name>.tar.gz model.pickle
tar -czvf artifact_auto_ai_model.tar.gz <model_name>.tar.gz pipeline-model.json
```

9. Upload model content
```
$ cpdctl wml models upload-content --space_id <space_id> --model_id <model_id> --content_type 'application/gzip' --content_format 'native' --body artifact_auto_ai_model.tar.gz
```

10. Create a model deployment
```
$ cpdctl wml deployments create --name <deployment_name> --online '{"description": "<deployment_description>"}' --asset '{"id": "<model_id>"}' --space_id <space_id>
```


