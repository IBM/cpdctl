# IBM Cloud Pak for Data Command Line Interface
**IBM Cloud Pak for Data Command Line Interface** (**IBM cpdctl**) is a command-line interface (CLI) you can use to manage the lifecycle of a model from IBM Cloud Pak for Data 3.0.1, 3.5, and 4.x.
> ![New in 1.4.0](https://img.shields.io/badge/New%20in-1.4.0-blue)
>
> Supported are private Cloud Pak for Data installations as well as Cloud Pak for Data as a Service (managed Cloud Pak for Data instance running on IBM Cloud).

Using the CLI, you can manage configuration settings and automate an end-to-end flow that includes training a model, saving it, creating a deployment space, and deploying the model.

**Note**: in Cloud Pak for Data two types of projects are used: Analytics Projects and Data Quality Projects. **IBM cpdctl** supports only Analytics Projects.

## Installation

**IBM Cloud Pak for Data Command Line Interface** is distributed as a single executable file inside a compressed archive. Installation consists in copying the file from the archive to a preferred directory.

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
> Previous **IBM cpdctl** versions gave priority to zero configuration mode: if connection settings could be automatically obtained, they were used unconditionally and manual configuration was ignored. Since v1.2.0 manual configuration has precedence: if configuration file is present, `IBM cpdctl` does not attempt to auto-detect connection settings.

### Zero configuration
**IBM cpdctl** uses two methods for connection settings auto-discovery:
1. based on `USER_ACCESS_TOKEN` and `RUNTIME_ENV_APSX_URL` environment variables.

   When running **IBM cpdctl** inside IBM Cloud Pak for Data (CP4D) cluster, e.g. from a Jupyter Notebook executed in Watson Studio, it automatically connects to that CP4D instance:
    * profile URL is read from environment variable `RUNTIME_ENV_APSX_URL`,
    * access token for currently logged-in user is read from environment variable `USER_ACCESS_TOKEN`.

> ![New in 1.4.0](https://img.shields.io/badge/New%20in-1.4.0-blue)
> 
> 2. based on session metadata of [ibmcloud CLI](https://www.ibm.com/cloud/cli).
>
>   On a machine where `ibmcloud` is configured to connect to IBM Cloud, **IBM cpdctl** can use its session metadata to connect to Cloud Pak for Data as a Service. Autoconfiguration mechanism honors environment variable `IBMCLOUD_HOME` to indicate non-default location for `ibmcloud` session metadata.


### Manual configuration
**IBM Cloud Pak for Data Command Line Interface** must be provided addresses and credentials to connect to IBM Cloud Pak for Data (CP4D) instances.
Single configuration file can be used to store information about one or more CP4D environments.

#### Configuration file location

The location of configuration file is determined in the following way (in order of precedence):
1. From `--cpd-config` flag value (if set). For example:

   `$ cpdctl --cpd-config config.yaml config profile list`

   When the path is not absolute, it is regarded as relative to the current working directory. The command above will load configuration from file `config.yaml` located in the current working directory.

2. From `CPD_CONFIG` environment variable (if set). For example:

   `$ CPD_CONFIG=/opt/cpdctl/config.yaml cpdctl config profile list`

   The command above will load configuration from absolute path `/opt/cpdctl/config.yaml`

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
* **user** reflects credentials of a CP4D account used for connection. It may be a pair of username and password, username and API key, or a path to a file that contains user access token.
* **profile** is the address (URL) of a CP4D instance, e.g. https://cpd-namespace.apps.OCP-default-domain. The URL should contain only host name, without path. A profile has to be associated with a user.
> ![New in 1.2.0](https://img.shields.io/badge/New%20in-1.2.0-blue)
> ### Deprecation of context and service configuration
> **IBM cpdctl** releases prior to 1.2.0 supported configuration of contexts and services. These two concepts have been deprecated and will be removed in the future. From now on profiles take over the role previously fulfilled by contexts and services.
> #### Backward compatibility
> * Configuration files created with earlier **IBM cpdctl** releases remain valid for releases following the deprecation.
>   * Profiles are directly associated with users to which they were previously linked via contexts.
>   * A profile associated with current context becomes the current profile.
>   * Service URLs (if defined) are stored directly in the corresponding profile.
>   * All context information is removed from configuration file.
> * Configuration commands `cpdctl config service <command>` are still supported and have the same effect as previously. The only difference is deprecation warning message printed to standard error stream.
> * Configuration commands `cpdctl config context <command>` are still supported but have different effect. Creating and updating contexts results in creating or updating profiles instead. Retrieving context information would return no results as no context information is present in the configuration file.
> * global flag `--context` is still honored and has the effect of selecting profile that was associated with the context. However, new global flag `--profile` has been introduced which has precedence over `--context` flag.
> * environment variable `CPD_CONTEXT` is still honored and has the effect of selecting profile that was associated with the context. However, new environment variable `CPD_PROFILE` has been introduced which has precedence over `CPD_CONTEXT`.
> #### Forward compatibility
> * There is no forward compatibility. Configuration files created with new **IBM cpdctl** releases cannot be used with releases prior to deprecation.
>

> ![New in 1.3.0](https://img.shields.io/badge/New%20in-1.3.0-blue)
> ### AES-256 encryption of credentials stored in configuration file
> **IBM cpdctl** stores passwords and API keys in configuration file. Since release 1.2.2 these secrets are encrypted using AES-256 algorithm. Custom encryption key for AES-256 can be provided by setting environment variable `CPDCTL_ENCRYPTION_KEY_PATH` to point to a file holding encryption key, e.g.:
> ```
> export CPDCTL_ENCRYPTION_KEY_PATH=/path/cpdctl.key
> ```
> If this environment variable is not set, **IBM cpdctl** will use its own hardcoded encryption key.
>
> There is no mechanism for recovery of secrets encrypted using custom encryption key. If the key is lost, configuration file must be re-created.
> #### Backward compatibility
> * Configuration files created with earlier **IBM cpdctl** releases can still be used. Any command that modifies configuration file (e.g. `cpdctl config profile set ...`) forces encryption of all passwords and API keys stored in this file.
> #### Forward compatibility
> * There is no forward compatibility. Configuration files that have credentials encrypted with AES-256 will not work with earlier **IBM cpdctl** releases.

> ![New in 1.4.0](https://img.shields.io/badge/New%20in-1.4.0-blue)
> ### Linking profile with ibmcloud session metadata
> **IBM cpdctl** v1.4.0 introduces new command
> ```
> cpdctl config profile link-ibmcloud <profile-name> [--home IBMCLOUD_HOME]
> ```
> This command creates new profile named `<profile-name>` linked to [ibmcloud session metadata directory](https://cloud.ibm.com/docs/cli?topic=cli-ibmcloud-home). **IBM cpdctl** retrieves API URL, IBM Cloud region, and access token information to connect to Cloud Pak for Data as a Service. If the token is expired, `ibmcloud login` must be run to refresh the token.

#### Configuration process example

This example illustrates how to create a configuration by defining a user and a profile.

First, set the credentials used to connect to IBM Cloud Pak for Data instance:

```
$ cpdctl config user set dev_user --username=<dev_username> --apikey=<dev_apikey>
``` 

Next, create profile associated with the user setting a specific URL of IBM Cloud Pak for Data instance:

```
$ cpdctl config profile set dev_profile --user dev_user --url <dev_profile_url>
```

> ![New in 1.0.46](https://img.shields.io/badge/New%20in-1.0.46-blue)
>
> The two steps above (setting user and profile) can be performed with a single command:
> ```
> $ cpdctl config profile set qa_profile --username=<qa_username> --apikey=<qa_apikey> --url <qa_profile_url>
> ```

> ![New in 1.4.0](https://img.shields.io/badge/New%20in-1.4.0-blue)
>
> To configure profile to connect to Cloud Pak for Data as a Service in IBM Cloud:
> ```
> $ cpdctl config profile set cpdaas --apikey=<apikey> --url https://cloud.ibm.com [--region IBM_CLOUD_REGION]
> ```

Print list of profiles:
```
$ cpdctl config profile list
Name          Type      User              URL                 Current
dev_profile   private   dev_user          <dev_profile_url>   *
qa_profile    private   qa_profile_user   <qa_profile_url>   
```
Asterisk in the `Current` column is an indicator of the current profile (profile used by subsequent **IBM cpdctl** runs). The column `Type` indicates if the connection target is an on-premise Cloud Pak for Data instance ('private') or a managed Cloud Pak for Data as a Service ('public'). 

When a first profile is created it becomes the current one. It is also possible to change current profile manually:
```
$ cpdctl config profile use <profile>
```
This change of current profile is persisted in configuration file and affects all subsequent **IBM cpdctl** runs that are using this file.
In order to temporarily change current profile:
* for a single command: use `--profile <profile>` flag,
* for a terminal session or shell script: use `CPD_PROFILE` environment variable.

### Support for IAM Service integration
Cloud Pak for Data 4.0 introduces [LDAP integration provided by the Identity and Access Management Service](https://www.ibm.com/docs/en/cloud-paks/cp-data/4.0?topic=tasks-integrating-iam-service) (IAM Service) in IBM Cloud Pak® foundational services.
**IBM cpdctl** supports authentication with IAM integration enabled and disabled.

When IAM integration is enabled, **IBM cpdctl** needs to know the route to the foundational services in order to authenticate users. The route has a form of an URL.
When it is not specified, it is auto-discovered from IBM Cloud Pak for Data instance. In order to override the discovered route, use the following command:
```shell
$ cpdctl config profile set <profile_name> --common-services-url <foundational-services-route>
```
To retrieve the foundational services route, log in to Red Hat® OpenShift® Container Platform and issue this command:
```shell
$ oc get route cp-console -n <foundational-services-ns> --template='{{ .spec.host }}'
```
where `<foundational-services-ns>` is the namespace of foundational services, by default `ibm-common-services`.

## Available commands
```
$ cpdctl --help
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

Parameters in JSON format can be read from files - use `@<file-path>` as parameter value, e.g.: `--json-param @path/to/param.json`.

## Supported outputs
**IBM Cloud Pak for Data Command Line Interface** supports three output formats: table (default), json, and yaml. Select the expected format with the `--output` flag. For example:
```
$ cpdctl space list --output json
```
Table output may truncate overly long values to improve readability of the table structure. Output formats `json` and `yaml` always present full information.

The CLI also supports JMESPath query output customization. This example shows how to get an identifier of the first space programmatically:
```
$ cpdctl space list --output json -j 'resources[0].metadata.id'
```

## Usage

Examples showing usage of **IBM cpdctl** to perform most common user scenarios are available in [samples folder](https://github.com/IBM/cpdctl/tree/master/samples).
