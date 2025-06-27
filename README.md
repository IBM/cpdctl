# IBM Cloud Pak for Data Command Line Interface
**IBM Cloud Pak for Data Command Line Interface** (**IBM cpdctl**) is a command-line interface (CLI) you can use to manage the lifecycle of a model from IBM Cloud Pak for Data 3.0.1, 3.5, 4.x, and 5.x.
> ![New in 1.4.0](https://img.shields.io/badge/New%20in-1.4.0-blue)
>
> **IBM cpdctl** now supports installation of Cloud Pak for Data on private cloud as well as Cloud Pak for Data as a Service (Cloud Pak for Data running on IBM Cloud).

> ![New in 1.8.0](https://img.shields.io/badge/New%20in-1.8.0-blue)
>
> **IBM cpdctl** now supports installation of Cloud Pak for Data on Amazon Web Services (AWS).

Using the CLI, you can manage configuration settings and automate an end-to-end flow that includes training a model, saving it, creating a deployment space, and deploying the model.

**Note**: in Cloud Pak for Data two types of projects are used: Analytics Projects and Data Quality Projects. **IBM cpdctl** supports only Analytics Projects.

### Compatibility with IBM Cloud Pak for Data releases
Always use most recent **IBM cpdctl** version available. It is backward compatible with all supported Cloud Pak for Data releases.

## Quick start
In order to use `IBM cpdctl` 
* **download executable appropriate for your platform (Linux or macOS)**
> These commands download and install the latest release of `cpdctl` executable to the current directory.
> ```shell
> platform=$(uname -s | tr '[A-Z]' '[a-z]')
> arch=$(uname -m | sed 's/x86_64/amd64/')
> curl -LOs "https://github.com/IBM/cpdctl/releases/latest/download/cpdctl_${platform}_${arch}.tar.gz"
> tar zxf cpdctl_${platform}_${arch}.tar.gz
> echo "Installed cpdctl version $(./cpdctl version)"
> ```
then either:
* **run straight away in Zero Configuration mode**, or
> When running `IBM cpdctl` inside a IBM Cloud Pak for Data (CP4D) cluster, for example from a Jupyter Notebook 
> executed in Watson Studio, it automatically connects to that CP4D instance, no configuration is needed. 
> More on Zero Configuration in [this section](#zero-configuration).
> 
> This command can be used as a simple test by listing assets from the project that the notebook belongs to:
> ```shell
> ! ./cpdctl asset search --type-name asset --query '*:*'  --limit 5 --project-id $PROJECT_ID
> ```
* **configure connection with on-premise Cloud Pak for Data**, or
> When running `IBM cpdctl` against remote on-premise CP4D instance, you must provide connection information. 
> 
> **Note**: set variables `cpd_url`, `cpd_username`, and `cpd_apikey` before running these commands.
> ```shell
> ./cpdctl config profile set cpd --url $cpd_url --username $cpd_username --apikey $cpd_apikey
> ./cpdctl config profile use cpd

* **configure connection with Cloud Pak for Data as a Service on IBM Cloud**, or
> When running `IBM cpdctl` against CP4D instance hosted on IBM Cloud, you must provide connection information.
> 
> **Note**: set variable `ibmcloud_apikey` before running these commands.
> ```shell
> ./cpdctl config profile set cpdaas --url https://cloud.ibm.com --apikey $ibmcloud_apikey
> ./cpdctl config profile use cpdaas
> ```

* **configure connection with Cloud Pak for Data as a Service on Amazon Web Services (AWS)**.
> When running `IBM cpdctl` against CP4D instance hosted on AWS, you must provide connection information.
>
> **Note**: set variables `aws_account_id` and `aws_apikey` before running these commands.
> ```shell
> ./cpdctl config profile set cpd-aws --url https://aws.data.ibm.com --auth-id $aws_account_id --apikey $aws_apikey
> ./cpdctl config profile use cpd-aws
> ```

## Installation

**IBM Cloud Pak for Data Command Line Interface** is distributed as a single executable file inside a compressed archive. To install, copy the file from the archive to a preferred directory.

When running from within a Watson Studio runtime, select the **Linux x64** platform.

### Common for all platforms:
Download the appropriate archive from [IBM cpdctl repository](https://github.com/IBM/cpdctl/releases/).

### Microsoft Windows x64
* Archive name `cpdctl_windows_amd64.zip`
* Use the Windows Explorer to extract `cpdctl.exe` from the archive.

### Linux x64
* Archive name `cpdctl_linux_amd64.tar.gz`
* Issue command `$ tar zxf cpdctl_linux_amd64.tar.gz` to extract the `cpdctl` executable from the archive.

### Linux Power 64 bit LE
* Archive name `cpdctl_linux_ppc64le.tar.gz`
* Issue command `$ tar zxf cpdctl_linux_ppc64le.tar.gz` to extract the `cpdctl` executable from the archive.

> ![New in 1.0.46](https://img.shields.io/badge/New%20in-1.0.46-blue)
> ### Linux on IBM Z
> * Archive name `cpdctl_linux_s390x.tar.gz`
> * Issue command `$ tar zxf cpdctl_linux_s390x.tar.gz` to extract the `cpdctl` executable from the archive.

### macOS - Intel x64 processors
* Archive name `cpdctl_darwin_amd64.tar.gz`
* Issue command `$ tar zxf cpdctl_darwin_amd64.tar.gz` to extract the `cpdctl` executable from the archive.

> ![New in 1.1.235](https://img.shields.io/badge/New%20in-1.1.235-blue)
>
> ### macOS - Apple silicon
> * Archive name `cpdctl_darwin_arm64.tar.gz`
> * Issue command `$ tar zxf cpdctl_darwin_arm64.tar.gz` to extract the `cpdctl` executable from the archive.

## Configuration
**IBM Cloud Pak for Data Command Line Interface** has two configuration modes:
1. **zero configuration** where connection settings are automatically detected and used,
2. **manual configuration** defined with `cpdctl config ...` commands and stored in a configuration file.

> ![New in 1.2.0](https://img.shields.io/badge/New%20in-1.2.0-blue)
>
> ### Precedence of manual configuration over zero configuration.
>
> Previous **IBM cpdctl** versions gave priority to zero configuration mode: if connection settings could be automatically obtained, they were used unconditionally and manual configuration was ignored. Starting with v1.2.0, manual configuration has precedence: if a configuration file is present, `IBM cpdctl` does not attempt to auto-detect connection settings.

### Zero configuration
**IBM cpdctl** uses two methods for connection settings auto-discovery:
1. Method 1 uses `USER_ACCESS_TOKEN` and `RUNTIME_ENV_APSX_URL` environment variables.

   When running **IBM cpdctl** inside a IBM Cloud Pak for Data (CP4D) cluster, for example from a Jupyter Notebook executed in Watson Studio, it automatically connects to that CP4D instance:
   * profile URL is read from environment variable `RUNTIME_ENV_APSX_URL`,
   * access token for currently logged-in user is read from environment variable `USER_ACCESS_TOKEN`.

> ![New in 1.4.0](https://img.shields.io/badge/New%20in-1.4.0-blue)
> 
> 2. Method 2 is based on session metadata of [IBM Cloud CLI](https://www.ibm.com/cloud/cli) (`ibmcloud`).
>
>   On a machine where `ibmcloud` is configured to connect to IBM Cloud, **IBM cpdctl** can use its session metadata to connect to Cloud Pak for Data as a Service. An auto-configuration mechanism honors the environment variable `IBMCLOUD_HOME` to indicate a non-default location for `ibmcloud` session metadata.


### Manual configuration
**IBM Cloud Pak for Data Command Line Interface** must be provided the addresses and credentials required to connect to IBM Cloud Pak for Data (CP4D) instances.
A single configuration file can be used to store information about one or more CP4D environments.

#### Configuration file location

The location of the configuration file is determined in the following way (in order of precedence):
1. From `--cpd-config` flag value (if set). For example:

   ```
   ./cpdctl --cpd-config config.yaml config profile list
   ```

   When the path is not absolute, it is regarded as relative to the current working directory. The command will load the configuration from file `config.yaml` located in the current working directory.

2. From `CPD_CONFIG` environment variable (if set). For example:

   ```
   CPD_CONFIG=/opt/cpdctl/config.yaml ./cpdctl config profile list
   ```

   The command will load the configuration from absolute path `/opt/cpdctl/config.yaml`

3. Finally, the default configuration file location `$HOME/.cpdctl/config` is used.

#### Configuration commands and concepts

The following groups of commands allow for managing configuration:
```
NAME:
  config - 

USAGE:
   cpdctl config [flags]

COMMANDS:
  user      Manage users
  profile   Manage profiles
``` 
* **user** reflects credentials of a CP4D account used for connection. It may be a pair of username and password, username and API key, or a path to a file that contains a user access token.
* **profile** is the address (URL) of a CP4D instance, for example: https://cpd-namespace.apps.OCP-default-domain. The URL should contain only the host name, without path. A profile must be associated with a user.
> ![New in 1.2.0](https://img.shields.io/badge/New%20in-1.2.0-blue)
> ### Deprecation of context and service configuration
> **IBM cpdctl** releases prior to 1.2.0 supported configuration of contexts and services. These two concepts have been deprecated and will be removed in the future. From now on profiles take over the role previously fulfilled by contexts and services.
> #### Backward compatibility
> * Configuration files created with earlier **IBM cpdctl** releases remain valid for releases following the deprecation.
> 
>   * Profiles are directly associated with users to which they were previously linked via contexts.
>   * A profile associated with current context becomes the current profile.
>   * Service URLs (if defined) are stored directly in the corresponding profile.
>   * All context information is removed from configuration file.
> * Configuration commands `cpdctl config service <command>` are still supported and have the same effect as they did with previous versions. The only difference is a deprecation warning message printed to standard error stream.
> * Configuration commands `cpdctl config context <command>` are still supported but now have a different effect. Creating and updating contexts results in creating or updating profiles instead. Retrieving context information returns no results as no context information is present in the configuration file.
> * global flag `--context` is still honored and has the effect of selecting the profile that was associated with the context. However, the new global flag `--profile` has been introduced which has precedence over `--context` flag.
> * environment variable `CPD_CONTEXT` is still honored and has the effect of selecting profile that was associated with the context. However, new environment variable `CPD_PROFILE` has been introduced which has precedence over `CPD_CONTEXT`.
> #### Forward compatibility
> * There is no forward compatibility. Configuration files created with new **IBM cpdctl** releases cannot be used with releases prior to deprecation.
>

> ![New in 1.3.0](https://img.shields.io/badge/New%20in-1.3.0-blue)
> ### AES-256 encryption of credentials stored in configuration file
> **IBM cpdctl** stores passwords and API keys in configuration file. Since release 1.3.0 these secrets are encrypted using AES-256 algorithm. Custom encryption key for AES-256 can be provided by setting environment variable `CPDCTL_ENCRYPTION_KEY_PATH` to point to a file holding encryption key. For example:
> ```
> export CPDCTL_ENCRYPTION_KEY_PATH=/path/cpdctl.key
> ```
> If this environment variable is not set, **IBM cpdctl** will use its own hardcoded encryption key.
>
> There is no mechanism for recovery of secrets encrypted using custom encryption key. If the key is lost, configuration file must be re-created.
> #### Backward compatibility
> * Configuration files created with earlier **IBM cpdctl** releases can still be used. Any command that modifies configuration file (for example, `cpdctl config profile set ...`) forces encryption of all passwords and API keys stored in this file.
> #### Forward compatibility
> * There is no forward compatibility. Configuration files that have credentials encrypted with AES-256 will not work with earlier **IBM cpdctl** releases.

> ![New in 1.4.0](https://img.shields.io/badge/New%20in-1.4.0-blue)
> ### Linking profile with IBM Cloud CLI configuration
> **IBM cpdctl** v1.4.0 introduces new flag `--ibmcloud`:
> ```
> ./cpdctl config profile set <profile-name> --ibmcloud
> ```
> This command creates a new profile named `<profile-name>` linked to [IBM Cloud CLI configuration](https://cloud.ibm.com/docs/cli?topic=cli-ibmcloud-home). **IBM cpdctl** retrieves API URL, IBM Cloud region, and access token information to connect to Cloud Pak for Data as a Service. If the token is expired, `ibmcloud login` must be run to refresh the token.
>
> The flag `--ibmcloud` accepts an optional value:
> ```
> ./cpdctl config profile set <profile-name> --ibmcloud [IBMCLOUD_HOME]
> ```
> This command creates cpdctl profile `<profile-name>` linked to alternative IBM Cloud CLI configuration directory `IBMCLOUD_HOME`. If no value is given then default IBM Cloud CLI configuration directory is assumed.
>

#### Configuration process example

This example illustrates how to create a configuration by defining a user and a profile.

First, set the credentials used to connect to IBM Cloud Pak for Data instance:

```
./cpdctl config user set dev_user --username=<dev_username> --apikey=<dev_apikey>
``` 

Next, create profile with a specific URL of IBM Cloud Pak for Data instance and associated to the given user:

```
./cpdctl config profile set dev_profile --user dev_user --url <dev_profile_url>
```

> ![New in 1.0.46](https://img.shields.io/badge/New%20in-1.0.46-blue)
>
> The two previous steps (setting user and profile) are equivalent to this single command:
> ```
> ./cpdctl config profile set qa_profile --username=<qa_username> --apikey=<qa_apikey> --url <qa_profile_url>
> ```

> ![New in 1.4.0](https://img.shields.io/badge/New%20in-1.4.0-blue)
>
> To configure profile to connect to Cloud Pak for Data as a Service in IBM Cloud:
> ```
> ./cpdctl config profile set cpdaas --apikey=<apikey> --url https://cloud.ibm.com [--region <ibm_cloud_region>]
> ```

> ![New in 1.8.0](https://img.shields.io/badge/New%20in-1.8.0-blue)
>
> To configure profile to connect to Cloud Pak for Data as a Service on Amazon Web Services (AWS):
> ```
> ./cpdctl config profile set cpd-aws --auth-id <account_id> --apikey=<apikey> --url https://aws.data.ibm.com [--auth-type=<aws_auth_type>] [--region <ibm_cloud_region>]
> ```

Print list of profiles:
```
$ ./cpdctl config profile list
Name          Type      User              URL                 Current
dev_profile   private   dev_user          <dev_profile_url>   *
qa_profile    private   qa_profile_user   <qa_profile_url>   
```
Asterisk in the `Current` column is an indicator of the current profile (profile used by subsequent **IBM cpdctl** runs). The column `Type` indicates if the connection target is an on-premise Cloud Pak for Data instance ('private') or a managed Cloud Pak for Data as a Service ('public').

When a first profile is created it becomes the current one. It is also possible to change current profile manually:
```
./cpdctl config profile use <profile>
```
This change of current profile is persisted in configuration file and affects all subsequent **IBM cpdctl** runs that are using this file.
In order to temporarily change current profile:
* for a single command: use `--profile <profile>` flag,
* for a terminal session or shell script: use `CPD_PROFILE` environment variable.

### Support for IAM Service integration
Cloud Pak for Data 4.0 introduces [LDAP integration provided by the Identity and Access Management Service](https://www.ibm.com/docs/en/cloud-paks/cp-data/4.0?topic=tasks-integrating-iam-service) (IAM Service) in IBM Cloud Pak® foundational services.
**IBM cpdctl** supports authentication with IAM integration enabled and disabled.

When IAM integration is enabled, **IBM cpdctl** must have the URL that is the route to the foundational services in order to authenticate users.
When it is not specified, it is auto-discovered from IBM Cloud Pak for Data instance. In order to override the discovered route, use the following command:
```shell
./cpdctl config profile set <profile_name> --common-services-url <foundational-services-route>
```
To retrieve the foundational services route, log in to Red Hat® OpenShift® Container Platform and issue this command:
```shell
oc get route cp-console -n <foundational-services-ns> --template='{{ .spec.host }}'
```
where `<foundational-services-ns>` is the namespace of foundational services, by default `ibm-common-services`.

## Available commands
```
$ ./cpdctl --help
IBM Cloud Pak for Data Command Line Interface

Usage:
  cpdctl [command]

Available Commands:
  config        Manage Configuration
  asset         Manage Assets
  project       Manage Projects
  space         Manage Spaces
  connection    Manage IBM Watson Data Platform Connections service.
  environment   Manage Environments and Runtimes API.
  notebook      Manage Notebooks
  job           Manage IBM Watson Data Platform Jobs and Scheduling Service.
  ml            Manage Watson Machine Learning
  datastage   Manage IBM APIs for DataStage.
  find          Find a resource with CPD Path
  version       Display the tool version
  help          Help about any command
  completion  generate the autocompletion script for the specified shell

Flags:
      --cpd-config string    Configuration file path
      --cpdconfig string     [Deprecated] Use --cpd-config instead
  -h, --help                 help for cpdctl
      --profile string       Name of the configuration profile to use
      --raw-output           If set to true, single values in JSON output mode are not surrounded by quotes
  -v, --version              version for cpdctl

Use "cpdctl [command] --help" for more information about a command.
```
Descriptions for all available commands along with examples showing the structure of complex parameters are provided in a [separate document](/README_command_reference.md).

Parameters in JSON format can be read from files - use `@<file-path>` as parameter value, for example: `--json-param @path/to/param.json`.

## Supported outputs
**IBM Cloud Pak for Data Command Line Interface** supports three output formats: table (default), json, and yaml. Select the expected format with the `--output` flag. For example:
```
./cpdctl space list --output json
```
Table output may truncate overly long values to improve readability of the table structure. Output formats `json` and `yaml` always present full information.

The CLI also supports JMESPath query output customization. This example shows how to get an identifier of the first space programmatically:
```
./cpdctl space list --output json -j 'resources[0].metadata.id'
```

## Usage

Examples showing usage of **IBM cpdctl** to perform most common user scenarios are available in [samples folder](https://github.com/IBM/cpdctl/tree/master/samples).
