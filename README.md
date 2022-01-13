# IBM Cloud Pak for Data Command Line Interface
**IBM Cloud Pak for Data Command Line Interface** (**IBM cpdctl**) is a command-line interface (CLI) you can use to manage the lifecycle of a model from IBM Cloud Pak for Data 3.0.1, 3.5, and 4.0.

Using the CLI, you can manage configuration settings and automate an end-to-end flow that includes training a model, saving it, creating a deployment space, and deploying the model.

## Installation

**IBM Cloud Pak for Data Command Line Interface** is distributed as a single executable file inside a compressed archive. Installation consists in copying the file from the archive to a preferred directory. Some platforms may require additional steps.

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
* Run `cpdctl`. Dismiss the warning message `"cpdctl" cannot be opened because the developer cannot be verified`.
* Go to `System Preferences` -> `Security & Privacy`, click on the lock icon and enter your password to allow modifications.
* In the 'General' section, find entry `"cpdctl" was blocked from use because it is not from an identified developer` and click `Allow Anyway`.
* Run `cpdctl` again. Select `Open` on the warning message `macOS cannot verify the developer...`.

## Configuration
**IBM Cloud Pak for Data Command Line Interface** uses a configuration file to store IBM Cloud Pak for Data connection information: URLs and credentials. The following groups of commands allow for managing configuration:

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
$ cpdctl config user set <qa-user> --username=<username> --password=<password>
``` 

Next, set the URL of IBM Cloud Pak for Data instance:

```
$ cpdctl config profile set <qa-profile> --url <profile_url>
```

Then define the context:

```
$ cpdctl config context set <qa-context> --user <qa-user> --profile <qa-profile>
```

> ![New in 1.0.46](https://img.shields.io/badge/New%20in-1.0.46-blue)
>
> The three steps above (setting user, profile and context) can be combined into one command:
> ```
> $ cpdctl config context set <qa-context> --username=<username> --password=<password> --url <profile_url>
> ```

Print list of contexts:

```
$ cpdctl config context list
Name           Profile        User        Current   
<qa-context>   <qa-profile>   <qa-user>  
```

Set default context:

```
$ cpdctl config context use <qa-context>
```

Every subsequent command will use the default context unless a `--context` flag is used to select another context for the command:
```
$ cpdctl space list --context <another-context>
```
### Support for IAM Service integration
Cloud Pak for Data 4.0 introduces [LDAP integration provided by the Identity and Access Management Service](https://www.ibm.com/docs/en/cloud-paks/cp-data/4.0?topic=tasks-integrating-iam-service) (IAM Service) in IBM Cloud Pak® foundational services.
**IBM cpdctl** supports authentication with IAM integration enabled and disabled.

When IAM integration is enabled, **IBM cpdctl** needs to know the route to the foundational services in order to authenticate users. The route has a form of an URL.
When it is not specified, it is auto-discovered from the Cloud Pak for Data instance. In order to override the discovered route, use the following command:
```shell
$ cpdctl config profile set <profile_name> --common-services-url <foundational-services-route>
```
To retrieve the foundational services route, log in to Red Hat® OpenShift® Container Platform and issue this command:
```shell
$ oc get route cp-console -n <foundational-services-ns> --template='{{ .spec.host }}'
```
where `<foundational-services-ns>` is the namespace of foundational services, by default `ibm-common-services`.

### Configuration with file

**IBM Cloud Pak for Data Command Line Interface** uses a single configuration file that allows it to store information about one or more contexts, where each context can refer to a different environment.

#### Configuration file location

The location of the configuration file is determined in the following way (in the order of precedence):
1. From the `--cpd-config` flag value (if set). For example:

   `$ cpdctl --cpd-config=config.yaml config profile list`

   When the path is not absolute, it is regarded as relative to the current working directory. The command above will load configuration from file `config.yaml` located in the current working directory.
2. From `CPD_CONFIG` environment variable (if set). For example:

   `$ CPD_CONFIG=/opt/cpdctl/config.yaml cpdctl config profile list`

   The command above will load configuration from absolute path `/opt/cpdctl/config.yaml`
3. Finally, the default configuration file location `$HOME/.cpdctl/config` is used.


## Available commands
```
$ cpdctl --help
Cross-product common CLI for Cloud Pak for Data

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
      --output-path string   If set, all output is redirected to a file of the given path
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
