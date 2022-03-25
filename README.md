# IBM Cloud Pak for Data Command Line Interface
**IBM Cloud Pak for Data Command Line Interface** (**IBM cpdctl**) is a command-line interface (CLI) you can use to manage the lifecycle of a model from IBM Cloud Pak for Data 3.0.1, 3.5, and 4.0.

Using the CLI, you can manage configuration settings and automate an end-to-end flow that includes training a model, saving it, creating a deployment space, and deploying the model.

**Note**: in Cloud Pak for Data two types of projects are used: Analytics Projects and Data Quality Projects. **IBM cpdctl** supports only Analytics Projects. 

## Installation

**IBM Cloud Pak for Data Command Line Interface** is distributed as a single executable file inside a compressed archive. Installation consists in copying the file from the archive to a preferred directory. Some platforms may require additional steps.

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

### macOS x64
* Archive name `cpdctl_darwin_amd64.tar.gz`
* Issue command `$ tar zxf cpdctl_darwin_mad64.tar.gz` to extract the `cpdctl` executable from the archive.

## Configuration
> ![New in 1.1.34](https://img.shields.io/badge/New%20in-1.1.34-blue)
> 
> **IBM Cloud Pak for Data Command Line Interface** has two configuration modes:
> 1. zero configuration based on `USER_ACCESS_TOKEN` environment variable,
> 2. manual configuration.
> 
> **IBM cpdctl** automatically enters zero configuration mode when `USER_ACCESS_TOKEN` variable is not empty, otherwise manual configuration mode is employed.

### Zero configuration
When running **IBM cpdctl** inside IBM Cloud Pak for Data (CP4D) cluster, e.g. from a Jupyter Notebook executed in Watson Studio, it automatically connects to that CP4D instance:
* profile URL is read from environment variable `RUNTIME_ENV_APSX_URL`,
* access token for currently logged-in user is read from environment variable `USER_ACCESS_TOKEN`.

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
* **user** reflects credentials of a CP4D account used for connection. It may be a pair of username and password, username and API key, or a path to a file that contains user access token.
* **profile** is the address (URL) of a CP4D instance, e.g. https://cpd-namespace.apps.OCP-default-domain. The URL should contain only host name, without path.  
* **service** describes details (URL, instance ID etc.) of services available in CP4D, like Watson Studio or Watson Machine Learning. They don't need to be configured manually since **IBM cpdctl** automatically retrieves these service details from CP4D instance.  
* **context** is an entity that binds **user**, **profile**, and **service** definitions. It is a convenience to facilitate quick switching between CP4D instances or user accounts.

#### Configuration process example

This example illustrates how to create a configuration by defining a user and a profile, then associating the user with the profile using a context.

First, set the credentials used to connect to IBM Cloud Pak for Data instance:

```
$ cpdctl config user set dev_user --username=<dev_username> --password=<dev_password>
``` 

Next, set the URL of IBM Cloud Pak for Data instance:

```
$ cpdctl config profile set dev_profile --url <dev_profile_url>
```

Then define the context:

```
$ cpdctl config context set dev_context --user dev_user --profile dev_profile
```

> ![New in 1.0.46](https://img.shields.io/badge/New%20in-1.0.46-blue)
>
> The three steps above (setting user, profile and context) can be achieved with a single command:
> ```
> $ cpdctl config context set qa_context --username=<qa_username> --password=<qa_password> --url <qa_profile_url>
> ```

Print list of contexts:
```
$ cpdctl config context list
Name           Profile        User        Current   
dev_context    dev_profile    dev_user
qa_context     qa_profile     qa_user     *  
```
Asterisk in the `Current` column is an indicator of the current context (context used by subsequent **IBM cpdctl** runs). 

When a context is created it becomes the current one. It is also possible to change current context manually:
```
$ cpdctl config context use <context>
```
This change of current context is persisted in configuration file and affects all subsequent **IBM cpdctl** runs that are using this file. 
In order to temporarily change current context:
* for a single command - use `--context <context>` flag,
* for a terminal session or shell script - use `CPD_CONTEXT` environment variable. 

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
      --context string       Name of the configuration context to use
      --cpd-config string    Configuration file path
      --cpdconfig string     [Deprecated] Use --cpd-config instead
  -h, --help                 help for cpdctl
      --raw-output           If set to true, single values in JSON output mode are not surrounded by quotes

Use "cpdctl [command] --help" for more information about a command.
```
Descriptions for all available commands along with examples showing the structure of complex parameters are provided in a [separate document](/README_command_reference.md).

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
