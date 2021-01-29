# CPDCTL
CPDCTL is a command-line interface (CLI) you can use to manage the lifecycle of a model from IBM Cloud Pak for Data 3.0.1 and 3.5.

Using the CLI you can manage configuration settings and automate an end-to-end flow that includes training a model, saving it, creating a deployment space, and deploying the model.

## Installation

CPDCTL is distributed as a single executable file inside a compressed archive. Installation consists in copying the file from the archive to a preferred directory. Some platforms may require additional steps.

### Common for all platforms:
Download the appropriate archive from [cpdctl repository](https://github.com/IBM/cpdctl/releases/).

### Microsoft Windows x64
* Archive name `cpdctl_windows_amd64.zip`
* Use the Windows Explorer to extract `cpdctl.exe` from the archive.
  
### Linux x64
* Archive name `cpdctl_linux_amd64.tar.gz`
* Issue command `tar zxf cpdctl_linux_amd64.tar.gz` to extract `cpdctl` executable from the archive.

### Linux Power 64 bit LE
* Archive name `cpdctl_linux_ppc64le.tar.gz`
* Issue command `tar zxf cpdctl_linux_ppc64le.tar.gz` to extract `cpdctl` executable from the archive.

### macOS x64
* Archive name `cpdctl_darwin_amd64.tar.gz`
* Issue command `tar zxf cpdctl_darwin_mad64.tar.gz` to extract `cpdctl` executable from the archive.
* Run `cpdctl`. Dismiss the warning message `"cpdctl" cannot be opened because the developer cannot be verified`.
* Go to `Preferences` -> `Security & Privacy`, click on the lock icon and enter your password to allow modifications.
* Find entry `"cpdctl" was blocked from use because it is not from an identified developer` and select `Allow Anyway`.
* Run `cpdctl` again. Select `Open` on the warning message `macOS cannot verify the developer...`.

## Configuration
`cpdctl` uses a configuration file to store IBM Cloud Pak for Data connection information: URLs and credentials. The following groups of commands allow for managing configuration:

```
$ cpdctl config
Manage Configuration

Usage:
  cpdctl config [command]

Available Commands:
  user       Manage users
  profile    Manage profiles
  service    Manage services
  context    Manage contexts
``` 

#### Example

This example illustrates how to create a configuration by defining a user and a profile, then associating the user with the profile using a context.

First, set the credentials used to connect to Cloud Pak for Data instance:

```
$ cpdctl config user set qa-user --username=<username> --password=<password>
``` 

Next, set the URL of IBM Cloud Pak for Data instance:

```
$ cpdctl config profile set qa-profile --url <profile_url>
```

Then define the context:

```
$ cpdctl config context set qa-context --user qa-user --profile qa-profile
```

Print list of contexts:

```
$ cpdctl config context list
Name         Profile      User     Current   
qa-context   qa-profile   qa-user  
```

Set default context:

```
$ cpdctl config context use qa-context
```

Every subsequent command will use the default context unless a `--context` flag is used to select another context for the command:
```
$ cpdctl space list --context other-context
```

### Configuration with file

`cpdctl` uses a single configuration file that allows to store information about one or more contexts, where each context can refer to a different environment.

#### Configuration file location

The location of configuration file is determined in the following way (in the order of precedence):
1. From the `--cpdconfig` flag value (if set). For example:
   
   `cpdctl --cpdconfig=config.yaml config profile list`
   
   When the path is not absolute, it is regarded as relative to the current working directory. The command above will load configuration from file `config.yaml` located in the current working directory.
2. From `CPDCONFIG` environment variable (if set). For example:
   `CPDCONFIG=/opt/cpdctl/config.yaml cpdctl config profile list`
   The command above will load configuration from absolute path `/opt/cpdctl/config.yaml`
3. Finally, the default configuration file location `$HOME/.cpdctl/config` is used.


## Available commands
```
$ cpdctl --help
Cross-product common CLI for CPD and Public Cloud

Usage:
  cpdctl [command]

Available Commands:
  config        Manage Configuration
  asset         Manage Assets
  project       Manage projects.
  space         Manage Spaces
  connection    Manage IBM Watson Data Platform Connections service.
  environment   Manage Environments and Runtimes API.
  notebook      Manage Notebooks.
  job           Manage IBM Watson Data Platform Jobs and Scheduling Service.
  ml            Manage Watson Machine Learning
  orchestration Manage Orchestration Flows
  find          Find a resource with CPD Path
  version       Display the tool version
  help          Help about any command

Flags:
      --context string       
      --cpdconfig string     
  -h, --help                 help for cpdctl
      --output-path string   
      --raw-output

Use "cpdctl [command] --help" for more information about a command.
```

## Supported outputs
`cpdctl` supports three output formats: table (default), json, and yaml. Select the expected format with the `--output` flag. For example:
```
$ cpdctl space list --output json
```
The CLI also supports JMESPath query output customization. This example shows how to get an id of the first space programmatically:
```
$ cpdctl space list --output json -j 'resources[0].metadata.id'
```

## Usage

### Projects

- create a project
```
$ cpdctl project create --name '<project_name>' --description '<project_description>' --storage '{"type": "assetfiles", "guid": "00000000-0000-0000-0000-000000000000", "resource_crn": "crn"}' --public false --generator 'CPDCTL CLI' --enforce-member true
```

- list projects
```
$ cpdctl project list
```

- get project details
```
$ cpdctl project get --project-id <project_id>
```

- update project
```
$ cpdctl project update --project-id <project_id> --description <project_description> --public true --tools jupyter_notebooks,dashboards
```

- create project member
```
$ cpdctl project member create --project-id <project_id> --members '[{"user_name":"<user_name>","id":"<user_id>","role":"editor","state":"ACTIVE","type":"user"},{"user_name":"<user_name>","id":"<user_id>","role":"viewer","state":"ACTIVE","type":"user"}]'
```

- list members in project
```
$ cpdctl project member list --project-id <project_id>
```

- list members with `editor` or `viewer` role
```
$ cpdctl project member list --project-id <project_id> --roles "editor,viewer"
```

- get member details
```
$ cpdctl project member get --project-id <project_id> --user-name "<user_name>"
```

- update member
```
$ cpdctl project member update --project-id <project_id> --members '[{"user_name":"<user_name>","role":"admin"},{"user_name":"<user_name>","role":"editor"}]'
```

- delete member
```
$ cpdctl project member delete --project-id <project_id> --user-names "<user_name>"
```

- delete project
```
$ cpdctl project delete --project-id '<project_id>'
```

### Environments

- create an environment
```
$ cpdctl environment create --project-id <project_id> --type "notebook" --name <env_name> --display-name <display_name> --hardware-specification '{"guid": "<hw_spec_id>"}' --software-specification '{"guid": "<sw_spec_id>"}' --tools-specification '{"supported_kernels": [{"language": "python", "version": "3.7", "display_name": "Python 3.7"}]}'
```

- list environments
```
$ cpdctl environment list --project-id <project_id>
```

- retrieve an environment
```
$ cpdctl environment get --environment-id <env_id> --project-id <project_id>
```

- update an environment (e.g update its description)
```
$ cpdctl environment update --environment-id <env_id> --project-id <project_id> --description <new_description>
```

- delete an environment
```
$ cpdctl environment delete --environment-id <env_id> --project-id <project_id>
```

- create a new hardware specification
```
$ cpdctl environment hardware-specification create --project-id <project_id> --name <hw_spec_name> --nodes '{"cpu": {"units": "1"}, "mem": {"size": "8Gi"}}'
```

- list hardware specifications
```
$ cpdctl environment hardware-specification list --project-id <project_id>
```

- retrieve a hardware specification
```
$ cpdctl environment hardware-specification get --project-id <project_id> --hardware-specification-id <hw_spec_id>
```

- update a hardware specification (e.g. update its description)
```
$ cpdctl environment hardware-specification update --project-id <project_id> --hardware-specification-id <hw_spec_id> --description <new_description>
```

- delete a hardware specification
```
$ cpdctl environment hardware-specification delete --project-id <project_id> --hardware-specification-id <hw_spec_id>
```

- create a software specification
```
$ cpdctl environment software-specification create --name <sw_spec_name> --software-configuration '{ "included_packages": [] }' --base-software-specification '{"guid" : "<base_sw_spec_id>"}' --project-id <project_id>
```

- list software specifications
```
$ cpdctl environment software-specification list --project-id <project_id>
```

- retrieve a software specification
```
$ cpdctl environment software-specification get --software-specification-id <sw_spec_id> --project-id <project_id>
```

- update a software specification (e.g. update its description)
```
$ cpdctl environment software-specification update --project-id <project_id> --software-specification-id <sw_spec_id> --description <new_description>
```

- delete a software specification
```
$ cpdctl environment software-specification delete --project-id <project_id> --software-specification-id <sw_spec_id>
```

- create a package extension (see [demo](samples/Notebook-and-Environment-samples.ipynb) for more details)
```
$ cpdctl environment package-extension create --name <pkg_ext_name> --type "conda_yml" --project-id <project_id>
$ cpdctl asset file upload --path <remote_file_path> --file <local_file_path> --project-id <project_id>
$ cpdctl environment package-extension upload-complete --package-extension-id <pkg_ext_id> --project-id <project_id>
```

- add a package extension to a software specification
```
$ cpdctl environment software-specification add-package-extensions --package-extension-id <pkg_ext_id> --project-id <project_id> --software-specification-id <sw_spec_id>
```

- list package extensions
```
$ cpdctl environment package-extension list --project-id <project_id>
```

- retrieve a package extension
```
$ cpdctl environment package-extension get --project-id <project_id> --package-extension-id <pkg_ext_id>
```

- update a package extension (e.g. update its description)
```
$ cpdctl environment package-extension update --package-extension-id <pkg_ext_id> --project-id <project_id>  --description <new_description>
```

- remove a package extension from a software specification
```
$ cpdctl environment software-specification remove-package-extensions --software-specification-id <sw_spec_id> --package-extension-id <pkg_ext_id> --project-id <project_id>
```

- delete a package extension
```
$ cpdctl environment package-extension delete --package-extension-id <pkg_ext_id> --project-id <project_id>
```

### Notebooks

- create a notebook (see [demo](samples/Notebook-and-Environment-samples.ipynb) for more details)
```
$ cpdctl asset file upload --path <remote_file_path> --file <local_file_path> --project-id <project_id>
$ cpdctl notebook create --file-reference <remote_file_path> --name <file_name> --project <project_id> --runtime '{"environment": "<env_id>"}' --originates-from '{"type": "blank"}'
```

- update a notebook (e.g update its environment)
```
$ cpdctl notebook update --notebook-id <notebook_id> --environment <env_id>
```

- revert a notebook to a specific version 
```
$ cpdctl notebook revert --notebook-id <notebook_id> --source <version_id>
```

- delete a notebook
```
$ cpdctl notebook delete --notebook-id <notebook_id>
```

- create a notebook version
```
$ cpdctl notebook version create --notebook-id <notebook_id>
```

- list notebook versions
```
$ cpdctl notebook version list --notebook-id <notebook_id>
```

- retrieve a notebook version
```
$ cpdctl notebook version get --notebook-id <notebook_id> --version-id <version_id>
```

- update a notebook version (e.g update its kernel)
```
$ cpdctl notebook version update --notebook-id <notebook_id> --version-id <version_id> --kernel '{"display_name": "Python 3.7", "name": "python3", "language": "python3"}'
```

- delete a notebook version
```
$ cpdctl notebook version delete --notebook-id <notebook_id> --version-id <version_id>
```

### Assets

- list data assets in project
```
$ cpdctl asset search --query "*:*" --project-id <project_id> --type-name data_asset
```

- list Watson Machine Learning models in project
```
$ cpdctl asset search --project-id <project_id> --type-name wml_model --query "*:*"
```

- list Watson Machine Learning pipelines in project
```
$ cpdctl asset search --project-id <project_id> --type-name wml_pipeline --query "*:*"
```

- upload file as data asset to project
```
$ cpdctl asset data-asset upload --project-id <project_id> --name <data_asset_name> --tag <asset_tag> --description <description> --file <file_path> --mime "text/csv" 
```

- download the asset attachment
```
$ cpdctl asset attachment download --project-id <project_id> --asset-id <asset_id> --attachment-id <attachment_id> --output-path <file_path>
```

- promote asset from project to space
```
$ cpdctl asset promote --asset-id <asset_id> --project-id <project_id> --body '{"mode": 0, "space_id": "<space_id>"}'
```

- export assets from project
```
$ cpdctl asset export start --assets '{"asset_ids":["<asset_id>"]}' --project-id <project_id> --output-file=./assets.zip
```

- import assets to space
```
$ cpdctl asset import start --space-id <space_id> --import-file assets.zip
```

### Spaces

- spaces create
```
$ cpdctl space create --name <space_name> --description <space_description>
```

- spaces list
```
$ cpdctl space list
```

- get space details
```
$ cpdctl space get --space-id <space_id>
```

- update space
```
$ cpdctl space update --space-id '<space_id>' --json-patch '[{"op": "add", "path": "/description", "value": "<updated_description>"}]'
```

- create space member
```
$ cpdctl space member create --space-id <space_id> --members '[{"id": "<member_id>", "role": "viewer"}, {"id": "member_id", "role": "editor"}]'
```

- list space members
```
$ cpdctl space member list --space-id <space_id>
```

- update space member
```
$ cpdctl space member update --space-id <space_id> --member-id '<member_id>' --json-patch '[{"op": "replace", "path": "/role", "value": "editor"}]'
```

- delete space member
```
$ cpdctl space member delete --space-id <space_id> --member-id '<member_id>'
```

- delete space
```
$ spaces delete --space-id <space_id>
```

### WML

- models create
```
$ cpdctl ml model create --name <model_name> --space-id <space_id> --software-spec '{"name": "scikit-learn_0.20-py3.6"}' --type 'scikit-learn_0.20'
```

- models list
```
$ cpdctl ml model list --space-id <space_id>
```

- models get
```
$ cpdctl ml model get --model-id <model_id> --space-id <space_id>
```

- upload binary model content
```
$ cpdctl ml model upload-content --model-id <model_id> --body scikit_model.tar.gz --content-format 'binary' --space-id <space_id>
```

- download model content
```
$ cpdctl ml model download-content --model-id <model_id> --output-file scikit_model_download.tar.gz --space-id <space_id>
```

- create next version (revision) of the model
```
$ cpdctl ml model create-revision --model-id <model_id> --space-id <space_id>
```

- list model revisions
```
$ cpdctl ml model list-revisions --model-id <model_id> --space-id <space_id>
```

- create function
```
$ cpdctl ml function create --name <function_name> --space-id <space_id> --software-spec '{"name": "ai-function_0.1-py3.6"}' --sample-scoring-input '{"input_data": [{"fields": ["name", "age", "occupation"], "values": [["john", 23, "student"], ["paul", 33, "engineer"]]}]}' --schemas '{"input": [{"id": "t1", "name": "Tasks", "fields": [{"name": "duration", "type": "number"}]}], "output": [{"id": "t1", "name": "Tasks", "fields": [{"name": "duration", "type": "number"}]}]}' --type 'python'
```

- list functions
```
$ cpdctl ml function list --space-id <space_id>
```

- get function details
```
$ cpdctl ml function get --function-id <function_id> --space-id <space_id>
```

- upload function code
```
$ cpdctl ml function upload-code --function-id <function_id> --space-id <space_id> --upload-code scoring_function.py.gz
```

- download function code
```
$ cpdctl ml function download-code --function-id <function_id> --space-id <space_id> --output-file scoring_function.py.gz --output json
```

- delete function
```
$ cpdctl ml function delete --function-id <function_id> --space-id <space_id>
```

- create deployment
```
$ cpdctl ml deployment create --name <deployment_name> --online '{"description": "<deployment_description>"}' --asset '{"id": "<model_id>"}' --space-id <space_id>
```

- deployments list
```
$ cpdctl ml deployment list --space-id <space_id>
```

- update the deployment with new asset revision
```
$ cpdctl ml deployment update --deployment-id <deployment_id> --json-patch '[{"op": "replace", "path": "/asset", "value": {"id": "<model_id>", "rev": "<revision_number>"}}]' --space-id <space_id>
```

- compute predictions
```
$ cpdctl ml deployment compute-predictions --deployment-id <deployment_id> --input-data '[{"values": [[0.0, 0.0, 5.0]]}]' 
```

- create batch deployment
```
$ cpdctl ml deployment create --name <deployment_name> --batch '{}' --asset '{"id": "<model_id>"}' --hardware-spec '{"name": "S", "num_nodes": 1}' --space-id <space_id>
```

- create deployment job
```
$ cpdctl ml deployment-job create --deployment '{"id": "<deployment_id>"}' --scoring '{"input_data": [{"id": "", "values": [["Positive", 0.84, 0, 10], ["Positive", 0.78, 0, 10], ["Negative", 0.27, 0, 10]]}]}' --space-id <space_id>
```

- list deployment jobs
```
$ cpdctl ml deployment-job list --space-id <space_id>
```

- get deployment job details
```
$ cpdctl ml deployment-job get --job-id <deployment_job_id> --space-id <space_id>
```

- create deployment job definition
```
$ cpdctl ml deployment-job-definition create --name <job_definition_name> --deployment '{"id": "<deployment_id>"}' --scoring '{"input_data": [{"id": "", "values": [["Positive", 0.84, 0, 10], ["Positive", 0.78, 0, 10], ["Negative", 0.27, 0, 10]]}]}' --space-id <space_id>
```

- list deployment job definitions
```
$ cpdctl ml deployment-job-definition list --space-id <space_id>
```

- delete deployment job definition
```
$ cpdctl ml deployment-job-definition delete --job-definition-id <job_definition_id> --space-id <space_id>

```
- delete deployment
```
$ cpdctl ml deployment delete --deployment-id <deployment_id> --space-id <space_id>
```

- delete model
```
$ cpdctl ml model delete --model-id <model_id> --space-id <space_id>
```

## AutoAI scenario

This end-to-end scenario shows how to train an AutoAI experiment, save a pipeline as a model, and deploy the model.

1. Create training pipeline
```
$ pipeline='
{
	"doc_type": "pipeline",
	"pipelines": [{
		"id": "autoai",
		"nodes": [{
			"id": "automl",
			"op": "kube",
			"parameters": {
				"optimization": {
					"compute_pipeline_notebooks_flag": true,
					"daub_adaptive_subsampling_max_mem_usage": 9000000000,
					"daub_include_only_estimators": ["LogisticRegressionEstimator"],
					"holdout_param": 0.1,
					"label": "Risk",
					"learning_type": "classification",
					"max_num_daub_ensembles": 1,
					"run_cognito_flag": true,
					"scorer_for_ranking": "precision"
				},
				"output_logs": true,
				"stage_flag": true
			},
			"runtime_ref": "autoai",
			"type": "execution_node"
		}],
		"runtime_ref": "hybrid"
	}],
	"primary_pipeline": "autoai",
	"runtimes": [{
		"app_data": {
			"wml_data": {
				"hardware_spec": {
					"name": "M"
				}
			}
		},
		"id": "autoai",
		"name": "auto_ai.kb"
	}],
	"version": "2.0"
}
'
$ cpdctl ml pipeline create --name <pipeline_name> --space-id <space_id> --document "$pipeline" --description '<pipeline_description>'
```

2. Upload training data asset
```
$ cpdctl asset data-assets upload --space-id <space_id> --file <training_dataset>.csv --mime 'text/csv' --origin-country us --tag '<asset_tag>'
```

3. Run AutoAI training
```
$ cpdctl ml training create --space-id <space_id> --name '<training_name>' --pipeline '{"id": "<training_pipeline_id>"}' --training-data-references '[{"connection": {}, "id": "<asset_id>", "location": {"href": "/v2/assets/<asset_id>?space_id=<space_id>"}, "type": "data_asset"}]' --results-reference '{"connection": {}, "location": {"path": "/spaces/<space_id>/assets/auto_ml"}, "type": "fs"}' --tags '<training_tag>'
```

4. Get training details
```
$ cpdctl ml training get --space-id <space_id> --training-id <training_id>
```

5. Download model trained by AutoAI
```
$ cpdctl asset file get --space-id <space_id> --path '<pipeline_path>/model.pickle' --output-file '<output_path>/model.pickle'
```

6. Download trained model pipeline
```
$ cpdctl asset file get --space-id <space_id> --path '<pipeline_path>/pipeline-model.json' --output-file '<output_path>/pipeline-model.json'
```

7. Create a model
```
$ cpdctl ml model create --name <model_name> --space-id <space_id> --type wml-hybrid_0.1 --label-column <label_column> --metrics '[<training_metrics>]' --software-spec '{"name": "hybrid_0.1"}' --tags '<model_tag>'
```

8. Prepare downloaded AutoAI pipeline and model
```
tar -czvf <model_name>.tar.gz model.pickle
tar -czvf artifact_auto_ai_model.tar.gz <model_name>.tar.gz pipeline-model.json
```

9. Upload model content
```
$ cpdctl ml model upload-content --space-id <space_id> --model-id <model_id> --content-type 'application/gzip' --content-format 'native' --body artifact_auto_ai_model.tar.gz
```

10. Create a model deployment
```
$ cpdctl ml deployment create --name <deployment_name> --online '{"description": "<deployment_description>"}' --asset '{"id": "<model_id>"}' --space-id <space_id>
```
