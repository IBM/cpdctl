# `cpdctl` command reference

This document provides a list of all available commands for CLI tool `cpdctl`.
A description of parameters is available for every command.
In case of complex parameters an example is provided which shows the schema of the model in JSON notation.

For general description of `cpdctl` purpose and usage refer to the [main README file](/).

---

#### [asset search](#2)
#### [asset create](#3)
#### [asset delete](#4)
#### [asset get](#5)
#### [asset update](#6)
#### [asset promote](#7)
#### [asset type list](#8)
#### [asset type get](#9)
#### [asset type replace](#10)
#### [asset attribute list](#11)
#### [asset attribute create](#12)
#### [asset attribute delete](#13)
#### [asset attribute get](#14)
#### [asset attribute update](#15)
#### [asset attachment create](#16)
#### [asset attachment delete](#17)
#### [asset attachment get](#18)
#### [asset attachment update](#19)
#### [asset attachment mark-complete](#20)
#### [asset attachment download](#21)
#### [asset data-asset create](#22)
#### [asset data-asset get](#23)
#### [asset data-asset upload](#24)
#### [asset file download](#25)
#### [asset file list](#26)
#### [asset file upload](#27)
#### [asset export list](#28)
#### [asset export start](#29)
#### [asset export cancel](#30)
#### [asset export get](#31)
#### [asset export download](#32)
#### [asset import list](#33)
#### [asset import start](#34)
#### [asset import cancel](#35)
#### [asset import get](#36)
#### [project create](#37)
#### [project delete](#38)
#### [project list](#39)
#### [project get](#40)
#### [project update](#41)
#### [project member delete](#42)
#### [project member list](#43)
#### [project member update](#44)
#### [project member create](#45)
#### [project member get](#46)
#### [space list](#47)
#### [space create](#48)
#### [space delete](#49)
#### [space get](#50)
#### [space update](#51)
#### [space member list](#52)
#### [space member create](#53)
#### [space member delete](#54)
#### [space member get](#55)
#### [space member update](#56)
#### [space wait](#57)
#### [connection list](#58)
#### [connection create](#59)
#### [connection discover-data-asset](#60)
#### [connection delete](#61)
#### [connection get](#62)
#### [connection update](#63)
#### [connection list-actions](#64)
#### [connection perform-action](#65)
#### [connection discover](#66)
#### [connection datasource-type list](#67)
#### [connection datasource-type get](#68)
#### [environment list](#69)
#### [environment create](#70)
#### [environment delete](#71)
#### [environment get](#72)
#### [environment update](#73)
#### [environment hardware-specification list](#74)
#### [environment hardware-specification create](#75)
#### [environment hardware-specification delete](#76)
#### [environment hardware-specification get](#77)
#### [environment hardware-specification update](#78)
#### [environment package-extension list](#79)
#### [environment package-extension create](#80)
#### [environment package-extension delete](#81)
#### [environment package-extension get](#82)
#### [environment package-extension update](#83)
#### [environment package-extension upload-complete](#84)
#### [environment software-specification list](#85)
#### [environment software-specification create](#86)
#### [environment software-specification delete](#87)
#### [environment software-specification get](#88)
#### [environment software-specification update](#89)
#### [environment software-specification remove-package-extensions](#90)
#### [environment software-specification add-package-extensions](#91)
#### [notebook create](#92)
#### [notebook delete](#93)
#### [notebook update](#94)
#### [notebook revert](#95)
#### [notebook version list](#96)
#### [notebook version create](#97)
#### [notebook version delete](#98)
#### [notebook version get](#99)
#### [notebook version update](#100)
#### [job list](#101)
#### [job create](#102)
#### [job delete](#103)
#### [job get](#104)
#### [job run list](#105)
#### [job run create](#106)
#### [job run delete](#107)
#### [job run get](#108)
#### [job run cancel](#109)
#### [job run logs](#110)
#### [job run download-results](#111)
#### [job run wait](#112)
#### [ml deployment create](#113)
#### [ml deployment list](#114)
#### [ml deployment get](#115)
#### [ml deployment delete](#116)
#### [ml deployment update](#117)
#### [ml deployment compute-predictions](#118)
#### [ml deployment wait](#119)
#### [ml deployment-job list](#120)
#### [ml deployment-job create](#121)
#### [ml deployment-job delete](#122)
#### [ml deployment-job get](#123)
#### [ml deployment-job-definition create](#124)
#### [ml deployment-job-definition list](#125)
#### [ml deployment-job-definition get](#126)
#### [ml deployment-job-definition update](#127)
#### [ml deployment-job-definition delete](#128)
#### [ml deployment-job-definition create-revision](#129)
#### [ml deployment-job-definition list-revisions](#130)
#### [ml experiment create](#131)
#### [ml experiment list](#132)
#### [ml experiment get](#133)
#### [ml experiment update](#134)
#### [ml experiment delete](#135)
#### [ml experiment create-revision](#136)
#### [ml experiment list-revisions](#137)
#### [ml function create](#138)
#### [ml function list](#139)
#### [ml function get](#140)
#### [ml function update](#141)
#### [ml function delete](#142)
#### [ml function create-revision](#143)
#### [ml function list-revisions](#144)
#### [ml function upload-code](#145)
#### [ml function download-code](#146)
#### [ml model create](#147)
#### [ml model list](#148)
#### [ml model get](#149)
#### [ml model update](#150)
#### [ml model delete](#151)
#### [ml model create-revision](#152)
#### [ml model list-revisions](#153)
#### [ml model list-attachments](#154)
#### [ml model upload-content](#155)
#### [ml model download-content](#156)
#### [ml model delete-content](#157)
#### [ml model filtered-download](#158)
#### [ml model wait](#159)
#### [ml model-definition create](#160)
#### [ml model-definition list](#161)
#### [ml model-definition get](#162)
#### [ml model-definition update](#163)
#### [ml model-definition delete](#164)
#### [ml model-definition create-revision](#165)
#### [ml model-definition list-revisions](#166)
#### [ml model-definition upload-model](#167)
#### [ml model-definition download-model](#168)
#### [ml pipeline create](#169)
#### [ml pipeline list](#170)
#### [ml pipeline get](#171)
#### [ml pipeline update](#172)
#### [ml pipeline delete](#173)
#### [ml pipeline create-revision](#174)
#### [ml pipeline list-revisions](#175)
#### [ml training create](#176)
#### [ml training list](#177)
#### [ml training get](#178)
#### [ml training delete](#179)
#### [ml training wait](#180)
#### [ml training-definition create](#181)
#### [ml training-definition list](#182)
#### [ml training-definition get](#183)
#### [ml training-definition update](#184)
#### [ml training-definition delete](#185)
#### [ml training-definition create-revision](#186)
#### [ml training-definition list-revisions](#187)
#### [find ](#188)
#### [config user list](#189)
#### [config user get](#190)
#### [config user set](#191)
#### [config user unset](#192)
#### [config profile list](#193)
#### [config profile get](#194)
#### [config profile set](#195)
#### [config profile unset](#196)
#### [config service list](#197)
#### [config service export](#198)
#### [config service get](#199)
#### [config service set](#200)
#### [config service unset](#201)
#### [config context list](#202)
#### [config context export](#203)
#### [config context get](#204)
#### [config context set](#205)
#### [config context unset](#206)
#### [config context current](#207)
#### [config context use](#208)
#### [version ](#209)
# Command descriptions
<a id='2'></a>
## asset search

Search for assets for generic asset type (asset) or any  specific asset type in given Catalog<br/><b> Examples of Search query<br/> Search With Pagination </b><br/>User can request specific number of Search results with  adding limit param to request as shown below.By default it will return upto 200  Search results <br/>Request Body<br/>{<br/>    "query" : "asset.name:Asset*," <br/>    "limit" : 2<br/>}<br/><br/>Response :<br/>{<br/>"next": {<br/>"bookmark": "g1AAAXXXXXXXX",<br/>    "query" : "asset.name:Asset*," <br/>    "limit" : 2<br/>},<br/>"results": [<br/> {  ..asset 1... }, {  ..asset 2... }],<br/>"total_rows": 3<br/>}<br/>When more search results available then  response will contain "next" json object."next" contains "bookmark" along with original query which needs to be returned to retrieve next sets of result.<br/> Please resend the request with whatever is returned in "next" object. <br/>The Last page will not have "next" object.

```sh
cpdctl asset search --type-name TYPE-NAME --query QUERY [--bookmark BOOKMARK] [--counts COUNTS] [--drilldown DRILLDOWN] [--include INCLUDE] [--limit LIMIT] [--sort SORT] [--x-open-id-connect-id-token X-OPEN-ID-CONNECT-ID-TOKEN] [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--type-name (string)</dt>
<dd>Asset Type name (eg: data_asset). Required.</dd>
<dt>--query (string)</dt>
<dd>Lucene query. Required.</dd>
<dt>--bookmark (string)</dt>
<dd></dd>
<dt>--counts ([]string)</dt>
<dd></dd>
<dt>--drilldown ([]map[string][]string)</dt>
<dd></dd>
<dt>--include (string)</dt>
<dd>entity.</dd>
<dt>--limit (int64)</dt>
<dd></dd>
<dt>--sort (string)</dt>
<dd>Sort order for the query.</dd>
<dt>--x-open-id-connect-id-token (string)</dt>
<dd>(DEPRECATED) X-OpenID-Connect-ID-Token.</dd>
<dd>The default value is `Bearer <token>`.</dd>
<dt>--catalog-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--project-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
</dl>

<a id='3'></a>
## asset create

Create an asset in catalog or project. Assets contain information about the contents of your data and how to access the data. You store asset metadata in a catalog and add collaborators from your organization to analyze data. Your data can reside in a variety of sources. For example, you can keep your data in your existing on-premises data sources, cloud data services, or streaming data feeds. By adding connection information to these remote sources in the catalog, you can allow other catalog users to access the data with the stored credentials. Alternatively, you can copy a snapshot of the remote data into the catalog's encrypted cloud storage.<br/>All asset types have a common set of properties. Some asset types have additional properties.<br/>When you add an asset to a catalog, you specify these common properties:
 * The asset name and an optional description. The name can only contain letters, numbers, underscore, dash, space, and period. The name can't be only blank spaces.
 * Privacy. You can choose to restrict access to the asset with the privacy level and asset membership. 
  * Public = Default. No restrictions on finding or using the asset.
  * Private = Only asset members can find or use the asset.
 * Members. The catalog collaborators can be added as members of the asset. Members are important if you restrict access to the asset. When you create an asset, you are the owner (and a member) of it.
 * Tags. Metadata that makes searching for the asset easier. Tags can contain only letters, numbers, underscores, dashes, and the symbols # and @.

```sh
cpdctl asset create --metadata METADATA [--attachments ATTACHMENTS] [--entity ENTITY] [--x-open-id-connect-id-token X-OPEN-ID-CONNECT-ID-TOKEN] [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--metadata (<a href="#cli-asset-metadata-example-schema-asset">AssetMetadata</a>)</dt>
<dd>AssetMetadata Model. Required.</dd>
<dt>--attachments (<a href="#cli-asset-attachment-example-schema-asset">AssetAttachment[]</a>)</dt>
<dd></dd>
<dt>--entity (interface{})</dt>
<dd></dd>
<dt>--x-open-id-connect-id-token (string)</dt>
<dd>(DEPRECATED) X-OpenID-Connect-ID-Token.</dd>
<dd>The default value is `Bearer <token>`.</dd>
<dt>--catalog-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--project-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
</dl>

<a id='4'></a>
## asset delete

Delete an existing asset properties. You can delete an asset if you are the owner of the asset or a member of the asset with Admin or Editor permissions on the catalog or project.

```sh
cpdctl asset delete --asset-id ASSET-ID [--x-open-id-connect-id-token X-OPEN-ID-CONNECT-ID-TOKEN] [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] [--purge-on-delete PURGE-ON-DELETE] 
```


#### Command options

<dl> 
<dt>--asset-id (string)</dt>
<dd>asset_id. Required.</dd>
<dt>--x-open-id-connect-id-token (string)</dt>
<dd>(DEPRECATED) X-OpenID-Connect-ID-Token.</dd>
<dd>The default value is `Bearer <token>`.</dd>
<dt>--catalog-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--project-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--purge-on-delete (bool)</dt>
<dd>If true, asset is also deleted from the trash.</dd>
<dd>The default value is `false`.</dd>
</dl>

<a id='5'></a>
## asset get

Retrieve an asset located in catalog or project. Access to an asset is controlled by a combination of the privacy level and the members of the asset. For a governed catalog, data assets are protected from unauthorized access by the governance policies that are defined in Data Catalog. Data assets in ungoverned catalogs are not subject to governance policies.

```sh
cpdctl asset get --asset-id ASSET-ID [--x-open-id-connect-id-token X-OPEN-ID-CONNECT-ID-TOKEN] [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] [--revision-id REVISION-ID] 
```


#### Command options

<dl> 
<dt>--asset-id (string)</dt>
<dd>asset_id. Required.</dd>
<dt>--x-open-id-connect-id-token (string)</dt>
<dd>(DEPRECATED) X-OpenID-Connect-ID-Token.</dd>
<dd>The default value is `Bearer <token>`.</dd>
<dt>--catalog-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--project-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--revision-id (string)</dt>
<dd>Revision id (1, 2, 3, ...), or leave empty for the current asset version. Use 'latest' for the most recent revision.</dd>
</dl>

<a id='6'></a>
## asset update

Edit an existing asset properties, if you have proper permissions. Who can edit asset properties depends on the privacy setting of the asset:<br/>If the asset privacy setting is public, you must have Editor or Admin permissions on the catalog to edit asset properties. If the asset privacy setting is private, you must have Editor or Admin permissions on the catalog and be an asset member to edit asset properties. You can edit these asset properties:
 * Name 
 * Description 
 * Tags 
 * Classification 
 * Resource key 
 * source_system.last_modification_timestamp, Expected Format: "yyyy-MM-ddTHH:mm:ssX".

```sh
cpdctl asset update --asset-id ASSET-ID --json-patch JSON-PATCH [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--asset-id (string)</dt>
<dd>asset_id. Required.</dd>
<dt>--json-patch (<a href="#cli-json-patch-operation-example-schema-asset">JSONPatchOperation[]</a>)</dt>
<dd>JSON array of patch operations as defined in RFC 6902.<br/>. Required.</dd>
<dt>--catalog-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--project-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
</dl>

<a id='7'></a>
## asset promote

Promote project assets to space. You must have Admin or Editor permissions on both the project and the space.

```sh
cpdctl asset promote --project-id PROJECT-ID --asset-id ASSET-ID --request-body REQUEST-BODY [--x-open-id-connect-id-token X-OPEN-ID-CONNECT-ID-TOKEN] [--revision-id REVISION-ID] 
```


#### Command options

<dl> 
<dt>--project-id (string)</dt>
<dd>project_id must be provided. Required.</dd>
<dt>--asset-id (string)</dt>
<dd>asset_id. Required.</dd>
<dt>--request-body (generic map)</dt>
<dd>Asset permission and metadata.  Example: { "mode": 0, "space_id":"string", "metadata":{"name":"string", "description":"string", "tags":["string","string"]} }  
  Values for mode is 0 (public), 8 (private), 16 (hidden).  
  If not supplied, the currently existing mode applies.  
  space_id is the target space id. 
  Metadata may contain attributes to overwrite the values in original asset; currently only name, description and tags may be overwritten. Required.</dd>
<dt>--x-open-id-connect-id-token (string)</dt>
<dd>(DEPRECATED) X-OpenID-Connect-ID-Token.</dd>
<dd>The default value is `Bearer <token>`.</dd>
<dt>--revision-id (string)</dt>
<dd>Revision id (1, 2, 3, ...), or leave empty for the current asset version. Use 'latest' for the most recent revision.</dd>
</dl>

<a id='8'></a>
## asset type list

Get all asset types in a catalog.

```sh
cpdctl asset type list [--x-open-id-connect-id-token X-OPEN-ID-CONNECT-ID-TOKEN] [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--x-open-id-connect-id-token (string)</dt>
<dd>(DEPRECATED) X-OpenID-Connect-ID-Token.</dd>
<dd>The default value is `Bearer <token>`.</dd>
<dt>--catalog-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--project-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
</dl>

<a id='9'></a>
## asset type get

Retrieves an asset type of a given name.

```sh
cpdctl asset type get --type-name TYPE-NAME [--x-open-id-connect-id-token X-OPEN-ID-CONNECT-ID-TOKEN] [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--type-name (string)</dt>
<dd>Asset Type name (eg: data_asset). Required.</dd>
<dt>--x-open-id-connect-id-token (string)</dt>
<dd>(DEPRECATED) X-OpenID-Connect-ID-Token.</dd>
<dd>The default value is `Bearer <token>`.</dd>
<dt>--catalog-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--project-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
</dl>

<a id='10'></a>
## asset type replace

Replace asset attributes for the given asset type or create a new asset type if the given asset type does not exist.
 Enter url_parameters_from_asset_attributes : ["id", "name.short_name"].

```sh
cpdctl asset type replace --type-name TYPE-NAME --fields FIELDS [--description DESCRIPTION] [--external-asset-preview EXTERNAL-ASSET-PREVIEW] [--properties PROPERTIES] [--relationships RELATIONSHIPS] [--x-open-id-connect-id-token X-OPEN-ID-CONNECT-ID-TOKEN] [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--type-name (string)</dt>
<dd>Asset Type name (eg: data_asset). Required.</dd>
<dt>--fields (<a href="#cli-asset-type-field-example-schema-asset">AssetTypeField[]</a>)</dt>
<dd>Asset type fields that will be indexed. Required.</dd>
<dt>--description (string)</dt>
<dd>Asset type description.</dd>
<dt>--external-asset-preview (<a href="#cli-external-asset-preview-example-schema-asset">ExternalAssetPreview</a>)</dt>
<dd>Asset Type URL Model.</dd>
<dt>--properties (<a href="#cli-map-string-asset-type-property-example-schema-asset">map[string]AssetTypeProperty</a>)</dt>
<dd>Descriptions of expected properties for this asset type. Each property can be described by its name and an AssetTypeProperty object.</dd>
<dt>--relationships (<a href="#cli-asset-type-relationship-example-schema-asset">AssetTypeRelationship[]</a>)</dt>
<dd>Relationship definitions for this asset type.</dd>
<dt>--x-open-id-connect-id-token (string)</dt>
<dd>X-OpenID-Connect-ID-Token.</dd>
<dd>The default value is `Bearer <token>`.</dd>
<dt>--catalog-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--project-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
</dl>

<a id='11'></a>
## asset attribute list

Retrieve all attributes of an asset.

```sh
cpdctl asset attribute list --asset-id ASSET-ID [--x-open-id-connect-id-token X-OPEN-ID-CONNECT-ID-TOKEN] [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] [--revision-id REVISION-ID] 
```


#### Command options

<dl> 
<dt>--asset-id (string)</dt>
<dd>asset_id. Required.</dd>
<dt>--x-open-id-connect-id-token (string)</dt>
<dd>(DEPRECATED) X-OpenID-Connect-ID-Token.</dd>
<dd>The default value is `Bearer <token>`.</dd>
<dt>--catalog-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--project-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--revision-id (string)</dt>
<dd>Revision id (1, 2, 3, ...), or leave empty for the current asset version. Use 'latest' for the most recent revision.</dd>
</dl>

<a id='12'></a>
## asset attribute create

Create an asset attribute.

```sh
cpdctl asset attribute create --asset-id ASSET-ID --name NAME [--entity ENTITY] [--x-open-id-connect-id-token X-OPEN-ID-CONNECT-ID-TOKEN] [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--asset-id (string)</dt>
<dd>asset_id. Required.</dd>
<dt>--name (string)</dt>
<dd> Required.</dd>
<dt>--entity (interface{})</dt>
<dd></dd>
<dt>--x-open-id-connect-id-token (string)</dt>
<dd>(DEPRECATED) X-OpenID-Connect-ID-Token.</dd>
<dd>The default value is `Bearer <token>`.</dd>
<dt>--catalog-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--project-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
</dl>

<a id='13'></a>
## asset attribute delete

Delete an attribute of an asset.

```sh
cpdctl asset attribute delete --asset-id ASSET-ID --attribute-key ATTRIBUTE-KEY [--x-open-id-connect-id-token X-OPEN-ID-CONNECT-ID-TOKEN] [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--asset-id (string)</dt>
<dd>asset_id. Required.</dd>
<dt>--attribute-key (string)</dt>
<dd>attribute_key. Required.</dd>
<dt>--x-open-id-connect-id-token (string)</dt>
<dd>(DEPRECATED) X-OpenID-Connect-ID-Token.</dd>
<dd>The default value is `Bearer <token>`.</dd>
<dt>--catalog-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--project-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
</dl>

<a id='14'></a>
## asset attribute get

Retrieve an attribute of an asset.

```sh
cpdctl asset attribute get --asset-id ASSET-ID --attribute-key ATTRIBUTE-KEY [--x-open-id-connect-id-token X-OPEN-ID-CONNECT-ID-TOKEN] [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] [--revision-id REVISION-ID] 
```


#### Command options

<dl> 
<dt>--asset-id (string)</dt>
<dd>asset_id. Required.</dd>
<dt>--attribute-key (string)</dt>
<dd>attribute_key. Required.</dd>
<dt>--x-open-id-connect-id-token (string)</dt>
<dd>(DEPRECATED) X-OpenID-Connect-ID-Token.</dd>
<dd>The default value is `Bearer <token>`.</dd>
<dt>--catalog-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--project-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--revision-id (string)</dt>
<dd>Revision id (1, 2, 3, ...), or leave empty for the current asset version. Use 'latest' for the most recent revision.</dd>
</dl>

<a id='15'></a>
## asset attribute update

Update/modify an asset attribute.

```sh
cpdctl asset attribute update --asset-id ASSET-ID --attribute-key ATTRIBUTE-KEY --json-patch JSON-PATCH [--x-open-id-connect-id-token X-OPEN-ID-CONNECT-ID-TOKEN] [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--asset-id (string)</dt>
<dd>asset_id. Required.</dd>
<dt>--attribute-key (string)</dt>
<dd>attribute_key. Required.</dd>
<dt>--json-patch (<a href="#cli-json-patch-operation-example-schema-asset">JSONPatchOperation[]</a>)</dt>
<dd>JSON array of patch operations as defined in RFC 6902.<br/>. Required.</dd>
<dt>--x-open-id-connect-id-token (string)</dt>
<dd>(DEPRECATED) X-OpenID-Connect-ID-Token.</dd>
<dd>The default value is `Bearer <token>`.</dd>
<dt>--catalog-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--project-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
</dl>

<a id='16'></a>
## asset attachment create

Creates an attachment.

```sh
cpdctl asset attachment create --asset-id ASSET-ID --asset-type ASSET-TYPE [--connection-id CONNECTION-ID] [--connection-path CONNECTION-PATH] [--data-partitions DATA-PARTITIONS] [--description DESCRIPTION] [--is-partitioned IS-PARTITIONED] [--mime MIME] [--name NAME] [--object-key OBJECT-KEY] [--object-key-is-read-only OBJECT-KEY-IS-READ-ONLY] [--private-url PRIVATE-URL] [--test-doc TEST-DOC] [--url URL] [--user-data USER-DATA] [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--asset-id (string)</dt>
<dd>Asset GUID. Required.</dd>
<dt>--asset-type (string)</dt>
<dd> Required.</dd>
<dt>--connection-id (string)</dt>
<dd></dd>
<dt>--connection-path (string)</dt>
<dd></dd>
<dt>--data-partitions (int64)</dt>
<dd></dd>
<dt>--description (string)</dt>
<dd></dd>
<dt>--is-partitioned (bool)</dt>
<dd></dd>
<dt>--mime (string)</dt>
<dd></dd>
<dt>--name (string)</dt>
<dd></dd>
<dt>--object-key (string)</dt>
<dd></dd>
<dt>--object-key-is-read-only (bool)</dt>
<dd></dd>
<dt>--private-url (bool)</dt>
<dd></dd>
<dt>--test-doc (int64)</dt>
<dd></dd>
<dt>--url (string)</dt>
<dd></dd>
<dt>--user-data (interface{})</dt>
<dd></dd>
<dt>--catalog-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--project-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
</dl>

<a id='17'></a>
## asset attachment delete

Delete an attachment.

```sh
cpdctl asset attachment delete --asset-id ASSET-ID --attachment-id ATTACHMENT-ID [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--asset-id (string)</dt>
<dd>Asset GUID. Required.</dd>
<dt>--attachment-id (string)</dt>
<dd>Attachment GUID. Required.</dd>
<dt>--catalog-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--project-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
</dl>

<a id='18'></a>
## asset attachment get

Retrieve an attachment.

```sh
cpdctl asset attachment get --asset-id ASSET-ID --attachment-id ATTACHMENT-ID [--revision-id REVISION-ID] [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] [--private-url PRIVATE-URL] [--response-content-disposition RESPONSE-CONTENT-DISPOSITION] [--response-content-type RESPONSE-CONTENT-TYPE] 
```


#### Command options

<dl> 
<dt>--asset-id (string)</dt>
<dd>Asset GUID. Required.</dd>
<dt>--attachment-id (string)</dt>
<dd>Attachment GUID. Required.</dd>
<dt>--revision-id (string)</dt>
<dd>Revision id (1, 2, 3, ...), or leave empty for the current asset version. Use 'latest' for the most recent revision.</dd>
<dt>--catalog-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--project-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--private-url (bool)</dt>
<dd>private_url.</dd>
<dd>The default value is `false`.</dd>
<dt>--response-content-disposition (string)</dt>
<dd>response-content-disposition.</dd>
<dt>--response-content-type (string)</dt>
<dd>response-content-type.</dd>
</dl>

<a id='19'></a>
## asset attachment update

Update attachment metadata.

```sh
cpdctl asset attachment update --asset-id ASSET-ID --attachment-id ATTACHMENT-ID --json-patch JSON-PATCH [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--asset-id (string)</dt>
<dd>Asset GUID. Required.</dd>
<dt>--attachment-id (string)</dt>
<dd>Attachment GUID. Required.</dd>
<dt>--json-patch (<a href="#cli-json-patch-operation-example-schema-asset">JSONPatchOperation[]</a>)</dt>
<dd>JSON array of patch operations as defined in RFC 6902. See http://jsonpatch.com/ for more info. <br/>[ 
   { "op": "add", "path": "/name", "value": "my_attachment"},  
  {"op": "replace", "path": "/mime", "value": "text/csv" },  
  { "op": "remove", "path":"/description"}
]. Required.</dd>
<dt>--catalog-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--project-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
</dl>

<a id='20'></a>
## asset attachment mark-complete

Marks an attachment as transfer complete.

```sh
cpdctl asset attachment mark-complete --asset-id ASSET-ID --attachment-id ATTACHMENT-ID [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--asset-id (string)</dt>
<dd>Asset GUID. Required.</dd>
<dt>--attachment-id (string)</dt>
<dd>Attachment GUID. Required.</dd>
<dt>--catalog-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--project-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
</dl>

<a id='21'></a>
## asset attachment download
Use this command to download the asset attachment to the local path

```sh
  cpdctl asset attachment download
```
#### Command options

<dl>
<dt>--asset-id string      </dt><dd>ID of the asset</dd>
<dt>--attachment-id string </dt><dd>ID of the attachment</dd>
<dt>--catalog-id string    </dt><dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--cpd-scope string     </dt><dd>CPD catalog or space or project scope, e.g. 'cpd://default-context/catalogs/7bccdda4-9752-4f37-868e-891de6c48135'</dd>
<dt>--progress             </dt><dd>Show download progress. (default true)</dd>
<dt>--project-id string    </dt><dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id string      </dt><dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
</dl>

<a id='22'></a>
## asset data-asset create

Add data assets to a catalog. Data assets could be data from a connection to a data source (ex. tables) or files from your local system uploaded into cloud object storage associated with Projects or Catalog.All asset types have a common set of properties, such as name, description, asset type, visibility, tags, classifications. Data Asset  have additional attributes such as mime type, columns with types, and properties. Use v2/attachments API to indicate location of data (ex. table path) from a connection to a data source.

```sh
cpdctl asset data-asset create --entity ENTITY --metadata METADATA [--attachments ATTACHMENTS] [--x-open-id-connect-id-token X-OPEN-ID-CONNECT-ID-TOKEN] [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--entity (generic map)</dt>
<dd> Required.</dd>
<dt>--metadata (<a href="#cli-asset-metadata-example-schema-asset">AssetMetadata</a>)</dt>
<dd>AssetMetadata Model. Required.</dd>
<dt>--attachments (<a href="#cli-asset-attachment-example-schema-asset">AssetAttachment[]</a>)</dt>
<dd></dd>
<dt>--x-open-id-connect-id-token (string)</dt>
<dd>(DEPRECATED) X-OpenID-Connect-ID-Token.</dd>
<dd>The default value is `Bearer <token>`.</dd>
<dt>--catalog-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--project-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id (string)</dt>
<dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
</dl>

<a id='23'></a>
## asset data-asset get

Retrieve _metadata_ about a data asset. The response document will contain three top-level fields:<br/>
 * **'metadata':** contains metadata common to all types of assets
 * **'entity':** contains metadata specific to the asset_type - in this case 'data_asset'
 * **'attachments':** an array containing one item of metadata per attached resource<br/><br/>The data described by the above metadata is stored in attached resources.  Examples of attached resources are database tables, csv files, word documents, extended metadata documents, etc.  Because an item in the 'attachments' array only contains metadata about an attached resource, accessing the actual attached resource requires additional server calls.  Exactly which additional server calls are needed depends on the kind of attached resource.  Follow the steps below to access an attached resource.<br/><br/>
    **Step 1**: find the index i of the item in the above 'attachments' array whose 'asset_type' value matches the type of the attached resource you want to access.  For a 'data_asset' attached resource look for the item i where 'attachments[i].asset_type' is 'data_asset'.<br/><br/>There are two important pairs of fields (among many others) which may appear in 'attachments[i]'.  Only one of those pairs will actually appear.  Which pair appears influences which steps to perform next.<br/>
 *  **Pair 1:** **'connection_id'** and **'connection_path'**:
  * The above two fields will appear in 'attachments[i]' if the value of 'attachments[i].is_remote' is true.
  * 'attachments[i].is_remote' WILL be true if the attached resource is a database table.  In this case, 'attachments[i].connection_path' will contain a schema name and table name.
  * 'attachments[i].is_remote' MAY be true if the attached resource is, for example, a csv file.  In this case, 'attachments[i].connection_path' will contain a folder path and file name.<br/><br/>If the above pair of fields are present in 'attachments[i]' then:<br/>
    **Step 2**: use the value of the 'attachments[i].connection_id' field to make a call to the **GET /v2/connections/{connection_id}** API.  You'll need appropriate credentials.<br/>
    **Step 3**: use the values in the 'entity.properties' field of the result from Step 2 to either create a connection to the database containing the table or to retrieve the file.<br/><br/>Note: even if 'attachments[i].is_remote' is true and the above pair of fields are present in 'attachments[i]', if the attached resource is located in the catalog/project bucket then you may optionally perform the two steps discussed for Pair 2 ('object_key' and 'handle') below.<br/>
 * **Pair 2:** **'object_key'** and **'handle'**:
  * The above two fields will appear in 'attachments[i]' if the value of 'attachments[i].is_remote' is false.  In this case, 'attachments[i].handle' will contain information about the attached resource.<br/>
    **Step 2**: use the value of the 'attachments[i].id' field as the value for 'attachment_id' in a call to the **GET /v2/assets/{asset_id}/attachments/{attachment_id}** API.  The value to use for 'asset_id' in the call to the attachments API is the same as the value that was used for 'data_asset_id' in the original call to the GET /v2/data_assets/{data_asset_id} API.<br/>
    **Step 3**: use the value in the 'url' field of the result from Step 2 to download (for example, with a browser) a copy of the file.

```sh
cpdctl asset data-asset get --data-asset-id DATA-ASSET-ID [--x-open-id-connect-id-token X-OPEN-ID-CONNECT-ID-TOKEN] [--revision-id REVISION-ID] [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--data-asset-id (string)</dt>
<dd>data_asset_id. Required.</dd>
<dt>--x-open-id-connect-id-token (string)</dt>
<dd>(DEPRECATED) X-OpenID-Connect-ID-Token.</dd>
<dd>The default value is `Bearer <token>`.</dd>
<dt>--revision-id (string)</dt>
<dd>Revision id (1, 2, 3, ...), or leave empty for the current asset version. Use 'latest' for the most recent revision.</dd>
<dt>--catalog-id (string)</dt>
<dd>catalog_id.</dd>
<dt>--project-id (string)</dt>
<dd>project_id (only catalog_id is supported at this time).</dd>
<dt>--space-id (string)</dt>
<dd>space_id (only catalog_id is supported at this time).</dd>
</dl>

<a id='24'></a>
## asset data-asset upload
Use this command to upload the local path as an asset attachment

```sh
  cpdctl asset data-asset upload
```
#### Command options

<dl>
<dt>--asset-id string       </dt><dd>ID of the asset</dd>
<dt>--catalog-id string     </dt><dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--cpd-scope string      </dt><dd>CPD project or catalog or space scope, e.g. 'cpd://default-context/projects/7bccdda4-9752-4f37-868e-891de6c48135'</dd>
<dt>--description string    </dt><dd>Description of the data asset.</dd>
<dt>--file strings          </dt><dd>Path to the file to upload.</dd>
<dt>--mime string           </dt><dd>The content type of the file.</dd>
<dt>--name string           </dt><dd>Name of the data asset (defaults to the uploaded file name).</dd>
<dt>--origin-country string </dt><dd>Origin country of the data asset. (default "us")</dd>
<dt>--progress              </dt><dd>Show upload progress. (default true)</dd>
<dt>--project-id string     </dt><dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--space-id string       </dt><dd>You must provide either a catalog id, a project id, or a space id, but not more than one.</dd>
<dt>--tag strings           </dt><dd>Tag(s) of the data asset. Multiple can be provided</dd>
</dl>

<a id='25'></a>
## asset file download
Streams the content of the specified file, with the appropriate HTTP headers for etag, file size, mime type etc. If the asset file is a directory, response will be JSON listing the content of the directory. If the asset is a file, response will be contents of the file. Requires viewer permission. Service authentication is supported. Catalog assets require service authentication. This endpoint supports authentication via signature paramater. See 'Get auth signature' call for more info.

```sh
  cpdctl asset file download --path PATH [--accept ACCEPT] [--catalog-id CATALOG-ID] [--account-id ACCOUNT-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] [--byte-limit BYTE-LIMIT] [--size-limit SIZE-LIMIT] [--signature SIGNATURE] [--flat FLAT] [--root ROOT] [--inflate INFLATE] [--force FORCE]
```
#### Command options

<dl>
<dt>--accept string            The type of the response:</dt><dd>or *_/_*.</dd>
<dt>--account-id string      </dt><dd>The catalog id the file is associated with. One of catalog, project, space or account id is required.</dd>
<dt>--byte-limit int         </dt><dd>If passed, indicates how many bytes of data is to be returned.</dd>
<dt>--catalog-id string      </dt><dd>The catalog id the file is associated with. One of catalog, project, space or account id is required.</dd>
<dt>--cos-credentials string </dt><dd>Credentials to Cloud Object Storage.</dd>
<dt>--cpd-scope string       </dt><dd>CPD space or project or catalog scope, e.g. 'cpd://default-context/spaces/7bccdda4-9752-4f37-868e-891de6c48135'</dd>
<dt>--flat                   </dt><dd>If true folder structures are recursively flattened and the response is a list of files of all files in parent and child directories. The 'path' will show the resource full path from starting directory.</dd>
<dt>--force                  </dt><dd>Only used when &inflate=true. Tells asset files to skip validation on wheter the target is a zip. Inflate will be run regardless.</dd>
<dt>--inflate                </dt><dd>If '&inflate=true' ALL other query params except the target are ignored. The file being retrieved must be an archive. If all checks pass the archive will be expanded to a temp location and the results will be returned as if flat=true was supplied. If the target archive has perviously be inflated any existing inflate preview will be overwritten if the zip is newer. Otherwise the previous preview will be returned.</dd>
<dt>--output-file string     </dt><dd>Filename/path to write the resulting output to.</dd>
<dt>--path string            </dt><dd>Asset file path.</dd>
<dt>--project-id string      </dt><dd>The project id the file is associated with. One of catalog, project, space or account id is required.</dd>
<dt>--root                   </dt><dd>If '&root=true' is supplied in request URL the api will return relative to target container's root directory instead of assets directory. Supported for services. Also supported for account admin if targeting account directory.</dd>
<dt>--signature string       </dt><dd>Additional auth method. Signed string obtained by making presigned API request.</dd>
<dt>--size-limit int         </dt><dd>Returns 400 bad request if asset is larger than the value provided here. In MB.</dd>
<dt>--space-id string        </dt><dd>The space id the file is associated with. One of catalog, project, space or account id is required.</dd>
</dl>

<a id='26'></a>
## asset file list
Returns a list of file paths (similar to S3 listObjects) for the provided project, catalog, space or account. Requires viewer or higher permission. When requesting assets for a catalog only Basic auth is supported.

```sh
  cpdctl asset file list [--catalog-id CATALOG-ID] [--account-id ACCOUNT-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] [--limit LIMIT] [--offset OFFSET] [--flat FLAT] [--root ROOT]
```
#### Command options

<dl>
<dt>--account-id string      </dt><dd>The catalog id the file is associated with. One of catalog, project, space or account id is required.</dd>
<dt>--catalog-id string      </dt><dd>Request the files for this catalog id. One of catalog, project, space or account id is required.</dd>
<dt>--cos-credentials string </dt><dd>Credentials to Cloud Object Storage.</dd>
<dt>--cpd-scope string       </dt><dd>CPD space or project or catalog scope, e.g. 'cpd://default-context/spaces/7bccdda4-9752-4f37-868e-891de6c48135'</dd>
<dt>--flat                   </dt><dd>If true folder structures are recursively flattened and the response is a list of files of all files in parent and child directories. The 'path' will show the resource full path from starting directory.</dd>
<dt>--limit string           </dt><dd>Pagination param, limit number of resources returned.</dd>
<dt>--offset string          </dt><dd>Pagination param, resources returned wil be offset by this value.</dd>
<dt>--path string            </dt><dd>List files with the given path prefix</dd>
<dt>--project-id string      </dt><dd>Request the files for this project id. One of project, catalog, space or account id is required.</dd>
<dt>--root                   </dt><dd>If '&root=true' is supplied in request URL the api will return relative to target container's root directory instead of assets directory. Supported for services. Also support for account admins if targeting account directory.</dd>
<dt>--space-id string        </dt><dd>Request the files for this space id. One of project, catalog, space or account id is required.</dd>
</dl>

<a id='27'></a>
## asset file upload
Uploads the bytes into the file with the provided file name using HTTP multi-part format, creating a new file if missing, overriding if existing (unless override=false). Adding catalog assets requires service authentication or a signed url. Adding project or space assets accepts all formats that grant editor access (user, signature or service). Adding to accounts requires user with account admin access or service auth. This endpoint supports authentication via signature paramater. See 'Get auth signature' call for more info on signed urls.

```sh
  cpdctl asset file upload --path PATH [--file FILE] [--file-content-type FILE-CONTENT-TYPE] [--catalog-id CATALOG-ID] [--account-id ACCOUNT-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] [--override OVERRIDE] [--signature SIGNATURE] [--inflate INFLATE] [--ensure-dir ENSURE-DIR] [--root ROOT]
```
#### Command options

<dl>
<dt>--account-id string        </dt><dd>The catalog id the file is associated with. One of catalog, project, space or account id is required.</dd>
<dt>--catalog-id string        </dt><dd>The catalog id the file should be associated with. One of catalog, project, space or account id is required.</dd>
<dt>--cos-credentials string   </dt><dd>Credentials to Cloud Object Storage.</dd>
<dt>--cpd-scope string         </dt><dd>CPD project or catalog or space scope, e.g. 'cpd://default-context/projects/7bccdda4-9752-4f37-868e-891de6c48135'</dd>
<dt>--ensure-dir               </dt><dd>Override utility. If true will ensure the directory specified in 'path' exists. 201 will be returned ig created, 200 if already exists and 409 if it is present and not a directory. Will take precedence over other query params except 'inflate'.</dd>
<dt>--file string              </dt><dd>File to upload.</dd>
<dt>--file-content-type string </dt><dd>The content type of File.</dd>
<dt>--inflate                  </dt><dd>Root dir must be created. Will take supplied file and decompress into target directory tree. Inflate is only acceptable for project, space and catalog targets. If inflate is selected it will take precedence over any and all other params.</dd>
<dt>--override                 </dt><dd>Default true. If set to false will not overwrite file.</dd>
<dt>--path string              </dt><dd>Asset file path.</dd>
<dt>--project-id string        </dt><dd>The project id the file should be associated with. One of catalog, project, space or account id is required.</dd>
<dt>--root                     </dt><dd>If '&root=true' is supplied in request URL the api will return relative to target container's root directory instead of assets directory. Supported for services. Also supported for account admin if targeting account directory.</dd>
<dt>--signature string         </dt><dd>Additional auth method. Signed string obtained by making API request to signing endpoint.</dd>
<dt>--space-id string          </dt><dd>The space id the file should be associated with. One of catalog, project, space or account id is required.</dd>
</dl>

<a id='28'></a>
## asset export list

Retrieves the asset export list for the specified space, project, or catalog.

```sh
cpdctl asset export list [--space-id SPACE-ID] [--project-id PROJECT-ID] [--catalog-id CATALOG-ID] [--start START] [--limit LIMIT] 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>Return resources pertaining to this space. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--project-id (string)</dt>
<dd>Return resources pertaining to this project. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--catalog-id (string)</dt>
<dd>This parameter is only supported on CPD 3.5. Return resources pertaining to this catalog. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--start (string)</dt>
<dd>Token representing first resource.</dd>
<dt>--limit (float64)</dt>
<dd>The number of resources returned. Default value is 100. Max value is 200.</dd>
</dl>

<a id='29'></a>
## asset export start

Starts the asset export process for the specified space, project, or catalog. On CPD 3.0.1 assets export is supported only in the context of a space.

```sh
cpdctl asset export start [--assets ASSETS] [--description DESCRIPTION] [--name NAME] [--space-id SPACE-ID] [--project-id PROJECT-ID] [--catalog-id CATALOG-ID] 
```


#### Command options

<dl> 
<dt>--assets (<a href="#cli-export-assets-example-schema-asset">ExportAssets</a>)</dt>
<dd></dd>
<dt>--description (string)</dt>
<dd></dd>
<dt>--name (string)</dt>
<dd></dd>
<dt>--space-id (string)</dt>
<dd>Return resources pertaining to this space. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--project-id (string)</dt>
<dd>Return resources pertaining to this project. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--catalog-id (string)</dt>
<dd>This parameter is only supported on CPD 3.5. Return resources pertaining to this catalog. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
</dl>

<a id='30'></a>
## asset export cancel

Cancels the asset export process with the specified identifier.

```sh
cpdctl asset export cancel --export-id EXPORT-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--catalog-id CATALOG-ID] [--hard-delete HARD-DELETE] 
```


#### Command options

<dl> 
<dt>--export-id (string)</dt>
<dd>The export identification. Required.</dd>
<dt>--space-id (string)</dt>
<dd>Return resources pertaining to this space. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--project-id (string)</dt>
<dd>Return resources pertaining to this project. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--catalog-id (string)</dt>
<dd>This parameter is only supported on CPD 3.5. Return resources pertaining to this catalog. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--hard-delete (bool)</dt>
<dd>Default is false.</dd>
<dd>The default value is `false`.</dd>
</dl>

<a id='31'></a>
## asset export get

Retrieves the asset export with the specified identifier.

```sh
cpdctl asset export get --export-id EXPORT-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--catalog-id CATALOG-ID] [--hard-delete HARD-DELETE] 
```


#### Command options

<dl> 
<dt>--export-id (string)</dt>
<dd>The export identification. Required.</dd>
<dt>--space-id (string)</dt>
<dd>Return resources pertaining to this space. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--project-id (string)</dt>
<dd>Return resources pertaining to this project. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--catalog-id (string)</dt>
<dd>This parameter is only supported on CPD 3.5. Return resources pertaining to this catalog. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--hard-delete (bool)</dt>
<dd>Default is false.</dd>
<dd>The default value is `false`.</dd>
</dl>

<a id='32'></a>
## asset export download

Downloads the content for the asset export process with the specified identifier.

```sh
cpdctl asset export download --export-id EXPORT-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--catalog-id CATALOG-ID] 
```


#### Command options

<dl> 
<dt>--export-id (string)</dt>
<dd>The export identification. Required.</dd>
<dt>--space-id (string)</dt>
<dd>Return resources pertaining to this space. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--project-id (string)</dt>
<dd>Return resources pertaining to this project. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--catalog-id (string)</dt>
<dd>This parameter is only supported on CPD 3.5. Return resources pertaining to this catalog. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
</dl>

<a id='33'></a>
## asset import list

Retrieves the asset import list for the specified space, project, or catalog.

```sh
cpdctl asset import list [--space-id SPACE-ID] [--project-id PROJECT-ID] [--catalog-id CATALOG-ID] [--start START] [--limit LIMIT] 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>Return resources pertaining to this space. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--project-id (string)</dt>
<dd>Return resources pertaining to this project. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--catalog-id (string)</dt>
<dd>This parameter is only supported on CPD 3.5. Return resources pertaining to this catalog. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--start (string)</dt>
<dd>Token representing first resource.</dd>
<dt>--limit (float64)</dt>
<dd>The number of resources returned. Default value is 100. Max value is 200.</dd>
</dl>

<a id='34'></a>
## asset import start

Starts the asset import process for the specified space, project, or catalog. On CPD 3.0.1 assets import is supported only in the context of a space.

```sh
cpdctl asset import start [--import-file IMPORT-FILE] [--space-id SPACE-ID] [--project-id PROJECT-ID] [--catalog-id CATALOG-ID] 
```


#### Command options

<dl> 
<dt>--import-file (io.ReadCloser)</dt>
<dd></dd>
<dt>--space-id (string)</dt>
<dd>Return resources pertaining to this space. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--project-id (string)</dt>
<dd>Return resources pertaining to this project. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--catalog-id (string)</dt>
<dd>This parameter is only supported on CPD 3.5. Return resources pertaining to this catalog. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
</dl>

<a id='35'></a>
## asset import cancel

Cancels the asset import process with the specified identifier.

```sh
cpdctl asset import cancel --import-id IMPORT-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--catalog-id CATALOG-ID] [--hard-delete HARD-DELETE] 
```


#### Command options

<dl> 
<dt>--import-id (string)</dt>
<dd>The import identification. Required.</dd>
<dt>--space-id (string)</dt>
<dd>Return resources pertaining to this space. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--project-id (string)</dt>
<dd>Return resources pertaining to this project. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--catalog-id (string)</dt>
<dd>This parameter is only supported on CPD 3.5. Return resources pertaining to this catalog. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--hard-delete (bool)</dt>
<dd>Default is false.</dd>
<dd>The default value is `false`.</dd>
</dl>

<a id='36'></a>
## asset import get

Retrieves the asset import with the specified identifier.

```sh
cpdctl asset import get --import-id IMPORT-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--catalog-id CATALOG-ID] [--hard-delete HARD-DELETE] 
```


#### Command options

<dl> 
<dt>--import-id (string)</dt>
<dd>The import identification. Required.</dd>
<dt>--space-id (string)</dt>
<dd>Return resources pertaining to this space. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--project-id (string)</dt>
<dd>Return resources pertaining to this project. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--catalog-id (string)</dt>
<dd>This parameter is only supported on CPD 3.5. Return resources pertaining to this catalog. Either `space_id`, `project_id`, `catalog_id` query parameter has to be given and is mandatory.</dd>
<dt>--hard-delete (bool)</dt>
<dd>Default is false.</dd>
<dd>The default value is `false`.</dd>
</dl>

<a id='37'></a>
## project create

Creates a new project with the provided parameters, including all the storage and credentials in a single transaction. This endpoint will create a new COS bucket using generated unique name, all credentials, asset container and call all the required atomic APIs to fully configure a new project. Attempts to use the duplicate project names will result in an error. <b>NOTE</b>:  when creating projects programmatically, always use this endpoint, not /v2/projects. <br/><br/><br/> This endpoint can also be used to create a project from an exported Watson Studio .zip file. In this case, a new transaction is initiated to create assets under the project. A Transaction ID along with a URL is returned as a response of this API. As this transaction can take time, you can view the current status of the transaction using the returned URL.<br><b>NOTE</b>: This feature is only available in the private cloud.

```sh
cpdctl project create --generator GENERATOR --name NAME --storage STORAGE [--compute COMPUTE] [--description DESCRIPTION] [--enforce-members ENFORCE-MEMBERS] [--public PUBLIC] [--tags TAGS] [--tools TOOLS] 
```


#### Command options

<dl> 
<dt>-g, --generator (string)</dt>
<dd>A tag to indicate where this project was generated. This is only intended for use in metrics. It does not need to be unique and all consumers of this API should use a consistent string for their 'generator' field. The value is stored in the project metadata for future consumption in metrics. Required.</dd>
<dt>-n, --name (string)</dt>
<dd>The name of the new project. The name must be a non-empty String. This does not need to be unique. Required.</dd>
<dt>--storage (<a href="#cli-transactional-project-storage-object-example-schema-project">TransactionalProjectStorageObject</a>)</dt>
<dd>Object storage properties to be associated with the project. Required.</dd>
<dt>-c, --compute (<a href="#cli-transactional-project-compute-object-cloud-example-schema-project">TransactionalProjectComputeObjectCloud[]</a>)</dt>
<dd>List of computes to be associated with the project.</dd>
<dt>-d, --description (string)</dt>
<dd>A description for the new project.</dd>
<dt>-e, --enforce-members (bool)</dt>
<dd>Set to true of project members should be scoped to the account and/or SAML of the creator.</dd>
<dd>The default value is `false`.</dd>
<dt>-p, --public (bool)</dt>
<dd>A value of `true` makes the project public.</dd>
<dd>The default value is `false`.</dd>
<dt>-t, --tags ([]string)</dt>
<dd>List of user defined tags that are attached to the project.</dd>
<dt>-T, --tools ([]string)</dt>
<dd>List of tools to be associated with the project.</dd>
</dl>

<a id='38'></a>
## project delete

Deletes a project with a given ID, deletes COS bucket and all the files in it, all credentials and asset container in the order reverse from the project creation transaction. When deleting projects programmatically, always use this endpoint, not /v2/projects/{project_id}.

```sh
cpdctl project delete --project-id PROJECT-ID 
```


#### Command options

<dl> 
<dt>-i, --project-id (string)</dt>
<dd>The ID of the project to be deleted. Required.</dd>
</dl>

<a id='39'></a>
## project list

Returns a list of projects that are meeting the provided query parameters. By default, the list returns projects that the authenticated user is a member of.

```sh
cpdctl project list [--member MEMBER] [--roles ROLES] [--tags TAGS] [--guids GUIDS] [--include INCLUDE] [--limit LIMIT] [--skip SKIP] 
```


#### Command options

<dl> 
<dt>-m, --member (string)</dt>
<dd>A project member to use to filter the query results by membership.</dd>
<dt>-r, --roles ([]string)</dt>
<dd>A list of comma-separated project roles to use to filter the query results. Must be used in conjunction with the 'member' query parameter.</dd>
<dt>-t, --tags ([]string)</dt>
<dd>A list of comma-separated, user-defined tags to use to filter the query results.</dd>
<dt>-g, --guids ([]string)</dt>
<dd>A list of comma-separated project GUIDs to use to filter the query results.</dd>
<dt>-I, --include ([]string)</dt>
<dd>A list of comma-separated project metadata sections to include in the query results.</dd>
<dt>-l, --limit (int64)</dt>
<dd>The limit to use to restrict the number of projects returned in the query results. Used for pagination in conjunction with the 'skip' query parameter.</dd>
<dd>The maximum value is `100`. The minimum value is `0`.</dd>
<dt>-s, --skip (int64)</dt>
<dd>The offset to use to define the starting index of projects to return in the query results. Used for pagination in conjunction with the 'limit' query parameter.</dd>
<dd>The minimum value is `0`.</dd>
</dl>

<a id='40'></a>
## project get

Returns the metadata for a target project specified by ID.

```sh
cpdctl project get --project-id PROJECT-ID [--include INCLUDE] 
```


#### Command options

<dl> 
<dt>-i, --project-id (string)</dt>
<dd>The project ID. Required.</dd>
<dd>The value must match regular expression `/^[0-9a-f]{8}(?:-[0-9a-f]{4}){3}-[0-9a-f]{12}$/`</dd>
<dt>-I, --include ([]string)</dt>
<dd>A list of comma-separated project metadata sections to include in the query results.</dd>
</dl>

<a id='41'></a>
## project update

Partially updates the project with only a subset of properties.

```sh
cpdctl project update --project-id PROJECT-ID [--catalog CATALOG] [--compute COMPUTE] [--description DESCRIPTION] [--name NAME] [--public PUBLIC] [--tags TAGS] [--tools TOOLS] 
```


#### Command options

<dl> 
<dt>-i, --project-id (string)</dt>
<dd>The project ID. Required.</dd>
<dd>The value must match regular expression `/^[0-9a-f]{8}(?:-[0-9a-f]{4}){3}-[0-9a-f]{12}$/`</dd>
<dt>--catalog (<a href="#cli-project-catalog-example-schema-project">ProjectCatalog</a>)</dt>
<dd>A catalog associated with the project.</dd>
<dt>-c, --compute (<a href="#cli-project-compute-example-schema-project">ProjectCompute[]</a>)</dt>
<dd>A list of computes associated with the project.</dd>
<dt>-d, --description (string)</dt>
<dd>A description for the new project.</dd>
<dt>-n, --name (string)</dt>
<dd>The name of the project.</dd>
<dd>The maximum length is `100 ` characters. The minimum length is `1` character.</dd>
<dt>-p, --public (bool)</dt>
<dd>A value of 'true' makes the project public.</dd>
<dd>The default value is `false`.</dd>
<dt>-t, --tags ([]string)</dt>
<dd>The user-defined tags associated with a project.</dd>
<dt>-T, --tools ([]string)</dt>
<dd>The tools associated with the project.</dd>
</dl>

<a id='42'></a>
## project member delete

Deletes members from the project that match the provided usernames.

```sh
cpdctl project member delete --project-id PROJECT-ID --user-names USER-NAMES 
```


#### Command options

<dl> 
<dt>-i, --project-id (string)</dt>
<dd>The project ID. Required.</dd>
<dd>The value must match regular expression `/^[0-9a-f]{8}(?:-[0-9a-f]{4}){3}-[0-9a-f]{12}$/`</dd>
<dt>-u, --user-names ([]string)</dt>
<dd>A list of comma-separated usernames corresponding to project members to remove from the project. Required.</dd>
</dl>

<a id='43'></a>
## project member list

Returns the list of project members.

```sh
cpdctl project member list --project-id PROJECT-ID [--roles ROLES] [--user-names USER-NAMES] 
```


#### Command options

<dl> 
<dt>-i, --project-id (string)</dt>
<dd>The project ID. Required.</dd>
<dd>The value must match regular expression `/^[0-9a-f]{8}(?:-[0-9a-f]{4}){3}-[0-9a-f]{12}$/`</dd>
<dt>-r, --roles ([]string)</dt>
<dd>A list of comma-separated project roles to use to filter the query results.</dd>
<dt>-u, --user-names ([]string)</dt>
<dd>A list of comma-separated usernames corresponding to project members that are used to filter the query results.</dd>
</dl>

<a id='44'></a>
## project member update

Change project member roles in a batch.

```sh
cpdctl project member update --project-id PROJECT-ID --members MEMBERS 
```


#### Command options

<dl> 
<dt>-i, --project-id (string)</dt>
<dd>The project ID. Required.</dd>
<dd>The value must match regular expression `/^[0-9a-f]{8}(?:-[0-9a-f]{4}){3}-[0-9a-f]{12}$/`</dd>
<dt>--members (<a href="#cli-update-member-body-example-schema-project">UpdateMemberBody[]</a>)</dt>
<dd>A list of project members to update. Required.</dd>
</dl>

<a id='45'></a>
## project member create

Adds new project members with the provided roles. A project must always have at least one admin.

```sh
cpdctl project member create --project-id PROJECT-ID --members MEMBERS 
```


#### Command options

<dl> 
<dt>-i, --project-id (string)</dt>
<dd>The project ID. Required.</dd>
<dd>The value must match regular expression `/^[0-9a-f]{8}(?:-[0-9a-f]{4}){3}-[0-9a-f]{12}$/`</dd>
<dt>--members (<a href="#cli-project-member-example-schema-project">ProjectMember[]</a>)</dt>
<dd>A list of project members. Required.</dd>
</dl>

<a id='46'></a>
## project member get

Returns the project member with the specified 'user_name' if any.

```sh
cpdctl project member get --project-id PROJECT-ID --user-name USER-NAME 
```


#### Command options

<dl> 
<dt>-i, --project-id (string)</dt>
<dd>The project ID. Required.</dd>
<dd>The value must match regular expression `/^[0-9a-f]{8}(?:-[0-9a-f]{4}){3}-[0-9a-f]{12}$/`</dd>
<dt>-u, --user-name (string)</dt>
<dd>The username of the project member. Required.</dd>
</dl>

<a id='47'></a>
## space list

Retrieves the space list.

```sh
cpdctl space list [--start START] [--limit LIMIT] [--total-count TOTAL-COUNT] [--id ID] [--tags TAGS] [--include INCLUDE] [--member MEMBER] [--roles ROLES] [--bss-account-id BSS-ACCOUNT-ID] [--name NAME] [--compute-crn COMPUTE-CRN] 
```


#### Command options

<dl> 
<dt>--start (string)</dt>
<dd>Token representing first resource.</dd>
<dt>--limit (float64)</dt>
<dd>The number of resources returned. Default value is 100. Max value is 200.</dd>
<dt>--total-count (bool)</dt>
<dd>Include details about total number of resources. This flag is not supported on CPD 3.0.1..</dd>
<dt>--id (string)</dt>
<dd>Comma separated list of ids to be returned. This flag is not supported on CPD 3.0.1.</dd>
<dt>--tags (string)</dt>
<dd>A list of comma-separated, user-defined tags to use to filter the query results.</dd>
<dt>--include (string)</dt>
<dd>A list of comma-separated space sections to include in the query results. Example: `?include=members`.

Available fields:
 * members (returns up to 100 members)
 * nothing (does not return space entity and metadata).</dd>
<dt>--member (string)</dt>
<dd>Filters the result list to only include spaces where the user with a matching user id is a member.</dd>
<dt>--roles (string)</dt>
<dd>Must be used in conjunction with the member query parameter. Filters the result set to include only spaces where the specified member has one of the roles specified.

Values:

  * admin
  * editor
  * viewer.</dd>
<dt>--bss-account-id (string)</dt>
<dd>Filtering by bss_account_id is allowed only for accredited services.</dd>
<dt>--name (string)</dt>
<dd>Filters the result list to only include space with specified name.</dd>
<dt>--compute-crn (string)</dt>
<dd>Filters the result list to only include spaces with specified compute.crn.</dd>
</dl>

<a id='48'></a>
## space create

Creates a new space to scope other assets. Authorized user must have the follwing roles (see /docs/cloud-object-storage?topic=cloud-object-storage-iams)
- Platform management role: Administrator
- Service access role: Manager

On Public Cloud user is required to provide Cloud Object Storage instance details in the `storage` property. On private CPD installations the default storage is used instead.

```sh
cpdctl space create --name NAME [--compute COMPUTE] [--description DESCRIPTION] [--storage STORAGE] [--tags TAGS] 
```


#### Command options

<dl> 
<dt>--name (string)</dt>
<dd>Name of space. Required.</dd>
<dt>--compute (<a href="#cli-compute-request-example-schema-space">ComputeRequest[]</a>)</dt>
<dd>This flag is not supported on CPD 3.0.1.</dd>
<dt>--description (string)</dt>
<dd>Description of space.</dd>
<dt>--storage (<a href="#cli-storage-request-example-schema-space">StorageRequest</a>)</dt>
<dd>Cloud Object Storage instance is required for spaces created on Public Cloud. On private CPD installations default storage is used instead. This flag is not supported on CPD 3.0.1.</dd>
<dt>--tags ([]string)</dt>
<dd>User-defined tags associated with a space.</dd>
</dl>

<a id='49'></a>
## space delete

Deletes the space with the specified identifier.

```sh
cpdctl space delete --space-id SPACE-ID 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The space identification. Required.</dd>
</dl>

<a id='50'></a>
## space get

Retrieves the space with the specified identifier.

```sh
cpdctl space get --space-id SPACE-ID [--include INCLUDE] 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The space identification. Required.</dd>
<dt>--include (string)</dt>
<dd>A list of comma-separated space sections to include in the query results. Example: `?include=members`.

Available fields:
 * members (returns up to 100 members)
 * nothing (does not return space entity and metadata).</dd>
</dl>

<a id='51'></a>
## space update

Partially update this space. Allowed paths are:
  - /name
  - /description
  - /compute.

```sh
cpdctl space update --space-id SPACE-ID --json-patch JSON-PATCH 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The space identification. Required.</dd>
<dt>--json-patch (<a href="#cli-json-patch-operation-example-schema-space">JSONPatchOperation[]</a>)</dt>
<dd>Input payload for the space.</dd>
</dl>

<a id='52'></a>
## space member list

Retrieves the member list for the specified space.

```sh
cpdctl space member list --space-id SPACE-ID [--start START] [--limit LIMIT] [--total-count TOTAL-COUNT] [--type TYPE] [--role ROLE] [--state STATE] 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The space identification. Required.</dd>
<dt>--start (string)</dt>
<dd>Token representing first resource.</dd>
<dt>--limit (float64)</dt>
<dd>The number of resources returned. Default value is 100. Max value is 200.</dd>
<dt>--total-count (bool)</dt>
<dd>Include details about total number of resources. This flag is not supported on CPD 3.0.1.</dd>
<dt>--type (string)</dt>
<dd>Find the member by `type`.</dd>
<dt>--role (string)</dt>
<dd>Find the member by `role`.</dd>
<dt>--state (string)</dt>
<dd>Find the member by `state`.</dd>
</dl>

<a id='53'></a>
## space member create

Adds a member to the specified space.

```sh
cpdctl space member create --space-id SPACE-ID --members MEMBERS 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The space identification. Required.</dd>
<dt>--members (<a href="#cli-member-resource-example-schema-space">MemberResource[]</a>)</dt>
<dd> Required.</dd>
</dl>

<a id='54'></a>
## space member delete

Removes the specified member from the space.

```sh
cpdctl space member delete --space-id SPACE-ID --member-id MEMBER-ID 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The space identification. Required.</dd>
<dt>--member-id (string)</dt>
<dd>The member identification. Required.</dd>
</dl>

<a id='55'></a>
## space member get

Retrieves the member information for the member and space with the specified identifiers.

```sh
cpdctl space member get --space-id SPACE-ID --member-id MEMBER-ID 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The space identification. Required.</dd>
<dt>--member-id (string)</dt>
<dd>The member identification. Required.</dd>
</dl>

<a id='56'></a>
## space member update

Partially update the member selected with the specified identifier. Allowed paths are:
  - /role
  - /state.

```sh
cpdctl space member update --space-id SPACE-ID --member-id MEMBER-ID --json-patch JSON-PATCH 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The space identification. Required.</dd>
<dt>--member-id (string)</dt>
<dd>The member identification. Required.</dd>
<dt>--json-patch (<a href="#cli-json-patch-operation-example-schema-space">JSONPatchOperation[]</a>)</dt>
<dd>The json patch.</dd>
</dl>

<a id='57'></a>
## space wait
Wait until the space creation or deletion is finished.

```sh
  cpdctl space wait --space-id SPACE_ID
```
#### Command options

<dl>
<dt>--cpd-scope string </dt><dd>CPD space scope, e.g. 'cpd://default-context/spaces/7bccdda4-9752-4f37-868e-891de6c48135'</dd>
<dt>--space-id string  </dt><dd>The space identification.</dd>
</dl>

<a id='58'></a>
## connection list

Lists defined connections.

Use the following parameters to sort the results:

| Field                     | Example                             |
| ------------------------- | ----------------------------------- |
| entity.name               | ?_sort=+entity.name                 |
| metadata.create_time      | ?_sort=-metadata.create_time        |

Use the following parameters to filter the results:

| Field                     | Example                             |
|-------------------------- | ----------------------------------- |
| entity.name               | ?entity.name=MyConnection           |
| entity.datasource_type    | ?entity.datasource_type=<asset_id>  |
| entity.context            | ?entity.context=source              |
| entity.properties         | ?entity.properties={"name":"value"} |
| entity.flags              | ?entity.flags=+restricted           |
| metadata.creator_id       | ?metadata.creator_id=userid         |

Filtering is done by specifying the fields to filter on. 

To filter on the properties of a connection, the exact values to  compare must be provided in the entities.properties field and all  values supplied must exactly match a property of a connection.

The entity.flags field specifies the flags a connection can have to be included in the list results. By default, all connections with no flags are returned. 

Adding the name of a flag to entity.flags will add the connections  with that flag to the list results. The name can be optionally  prefixed with a plus sign (+) to indicate that it is being added.

Adding the name of a flag to entity.flags with a minus sign (-) prefix will remove those connections with that flag from the list  results. All additions are done before the subtractions.

```sh
cpdctl connection list [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] [--sort SORT] [--start START] [--limit LIMIT] [--metadata-creator METADATA-CREATOR] [--entity-name ENTITY-NAME] [--entity-datasource-type ENTITY-DATASOURCE-TYPE] [--entity-context ENTITY-CONTEXT] [--entity-properties ENTITY-PROPERTIES] [--entity-flags ENTITY-FLAGS] 
```


#### Command options

<dl> 
<dt>--catalog-id (string)</dt>
<dd>The ID of the catalog to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--project-id (string)</dt>
<dd>The ID of the project to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--space-id (string)</dt>
<dd>The ID of the space to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--sort (string)</dt>
<dd>The field to sort the results on, including whether to sort ascending (+) or descending (-), for example, sort=-metadata.create_time.</dd>
<dt>--start (string)</dt>
<dd>The page token indicating where to start paging from.</dd>
<dt>--limit (int64)</dt>
<dd>The limit of the number of items to return, for example limit=50. If not specified a default of 100 will be  used.</dd>
<dd>The minimum value is `1`.</dd>
<dt>--metadata-creator (string)</dt>
<dd>The creator of the connection.</dd>
<dt>--entity-name (string)</dt>
<dd>The name of the connection.</dd>
<dt>--entity-datasource-type (string)</dt>
<dd>The data source type of the connection.</dd>
<dt>--entity-context (string)</dt>
<dd>The context of the connection. Can be one of "source", "target", or "source,target".</dd>
<dt>--entity-properties (string)</dt>
<dd>The properties of the connection that must match for the connection to be included in the list.</dd>
<dt>--entity-flags (string)</dt>
<dd>A comma separated list of flags that must be present for the connection to be included in the list. If not provided, only connections with no flags will be returned.</dd>
</dl>

<a id='59'></a>
## connection create

Defines a connection.

```sh
cpdctl connection create --datasource-type DATASOURCE-TYPE --name NAME [--asset-category ASSET-CATEGORY] [--child-source-systems CHILD-SOURCE-SYSTEMS] [--description DESCRIPTION] [--flags FLAGS] [--gateway-id GATEWAY-ID] [--interaction-properties INTERACTION-PROPERTIES] [--origin-country ORIGIN-COUNTRY] [--owner-id OWNER-ID] [--properties PROPERTIES] [--ref-asset-id REF-ASSET-ID] [--ref-catalog-id REF-CATALOG-ID] [--rov ROV] [--source-system SOURCE-SYSTEM] [--tags TAGS] [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] [--test TEST] 
```


#### Command options

<dl> 
<dt>--datasource-type (string)</dt>
<dd>The id of the data source type to connect to. For example. "cfdcb449-1204-44ba-baa6-9a8a878e6aa7". Required.</dd>
<dt>--name (string)</dt>
<dd>The name of the connection. Required.</dd>
<dt>--asset-category (string)</dt>
<dd>The asset category.</dd>
<dd>Allowable values are: user, system</dd>
<dt>--child-source-systems ([]map[string]interface{})</dt>
<dd></dd>
<dt>--description (string)</dt>
<dd>The description of the connection.</dd>
<dt>--flags ([]string)</dt>
<dd>Specifies how a connection is to be treated internally.</dd>
<dt>--gateway-id (string)</dt>
<dd>The id of the secure gateway to use with the connection. A Secure Gateway is needed when connecting to an on-premises data source. This is the id of the Secure Gateway created with the SecureGateway Service. Your Secure Gateway Client running on-premises must be connected to the gateway with this Id. For example, "E9oXGRIhv1e_prod_ng".</dd>
<dt>--interaction-properties (<a href="#cli-connection-interaction-properties-example-schema-connection">ConnectionInteractionProperties</a>)</dt>
<dd>Interaction properties allowed for a connection.</dd>
<dt>--origin-country (string)</dt>
<dd>Country which data originated from. - ISO 3166 Country Codes.</dd>
<dt>--owner-id (string)</dt>
<dd>Owner or creator of connection.  Provided when a service ID token is used to create connection.</dd>
<dt>--properties (generic map)</dt>
<dd>Connection properties.</dd>
<dt>--ref-asset-id (string)</dt>
<dd>The ID of the connection in reference catalog that this connection refers to for properties values.</dd>
<dt>--ref-catalog-id (string)</dt>
<dd>The ID of the catalog that this connection refers to for properties values.</dd>
<dt>--rov (<a href="#cli-connection-rov-example-schema-connection">ConnectionRov</a>)</dt>
<dd>Rules of visibility for connections.</dd>
<dt>--source-system (generic map)</dt>
<dd>Custom data to be associated with a given object.</dd>
<dt>--tags ([]string)</dt>
<dd></dd>
<dt>--catalog-id (string)</dt>
<dd>The ID of the catalog to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--project-id (string)</dt>
<dd>The ID of the project to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--space-id (string)</dt>
<dd>The ID of the space to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--test (bool)</dt>
<dd>Whether to test the connection before saving it. If a connection cannot be established, the connection is not saved.</dd>
<dd>The default value is `true`.</dd>
</dl>

<a id='60'></a>
## connection discover-data-asset

Discover a data asset.

```sh
cpdctl connection discover-data-asset --data-asset-id DATA-ASSET-ID [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] [--limit LIMIT] [--offset OFFSET] [--fetch FETCH] [--detail DETAIL] [--context CONTEXT] [--properties PROPERTIES] [--filters FILTERS] [--path PATH] 
```


#### Command options

<dl> 
<dt>--data-asset-id (string)</dt>
<dd>The ID of the data asset. Required.</dd>
<dt>--catalog-id (string)</dt>
<dd>The ID of the catalog to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--project-id (string)</dt>
<dd>The ID of the project to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--space-id (string)</dt>
<dd>The ID of the space to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--limit (int64)</dt>
<dd>The limit of the number of items to return, for example limit=50. If not specified a default of 100 will be  used.</dd>
<dd>The minimum value is `1`.</dd>
<dt>--offset (int64)</dt>
<dd>The 0-based index of the first result to return, for example, offset=200. If not specified, the default offset of 0 is used.</dd>
<dd>The minimum value is `0`.</dd>
<dt>--fetch (string)</dt>
<dd>Specify whether to return the asset's metadata, the asset's data, interaction properties, connection properties, or data source type. If not specified, metadata is used by default. This parameter only applies when requesting details about a data set. To specify multiple fetch values, use a comma-separated string, such as fetch=data,metadata,interaction,connection,datasource_type.</dd>
<dt>--detail (bool)</dt>
<dd>Specify whether to return additional asset-specific details. If not specified, these details are not returned.</dd>
<dt>--context (string)</dt>
<dd>Specify whether the asset is discovered for the purpose of reading (source) or writing (target). If not specified, source is used by default.</dd>
<dd>Allowable values are: source, target</dd>
<dt>--properties (string)</dt>
<dd>A JSON object containing a set of properties to configure aspects of the asset browsing.</dd>
<dt>--filters (string)</dt>
<dd>A JSON object containing a set of properties to define filtering of the assets to be returned.</dd>
<dt>--path (string)</dt>
<dd>Path of the asset.</dd>
</dl>

<a id='61'></a>
## connection delete

Deletes a connection definition. This call does not check whether the connection is used by activities, data sets or other assets. The caller must check this before deleting a connection.

```sh
cpdctl connection delete --connection-id CONNECTION-ID [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--connection-id (string)</dt>
<dd>The ID of the connection. Required.</dd>
<dt>--catalog-id (string)</dt>
<dd>The ID of the catalog to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--project-id (string)</dt>
<dd>The ID of the project to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--space-id (string)</dt>
<dd>The ID of the space to use. catalog_id, project_id, or space_id is required.</dd>
</dl>

<a id='62'></a>
## connection get

Gets details of a specific connection definition.

```sh
cpdctl connection get --connection-id CONNECTION-ID [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--connection-id (string)</dt>
<dd>The ID of the connection. Required.</dd>
<dt>--catalog-id (string)</dt>
<dd>The ID of the catalog to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--project-id (string)</dt>
<dd>The ID of the project to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--space-id (string)</dt>
<dd>The ID of the space to use. catalog_id, project_id, or space_id is required.</dd>
</dl>

<a id='63'></a>
## connection update

Updates the definition of a connection.

```sh
cpdctl connection update --connection-id CONNECTION-ID --patch-request PATCH-REQUEST [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] [--test TEST] 
```


#### Command options

<dl> 
<dt>--connection-id (string)</dt>
<dd>The ID of the connection. Required.</dd>
<dt>--patch-request (<a href="#cli-json-patch-operation-example-schema-connection">JSONPatchOperation[]</a>)</dt>
<dd>Fields to update within the connection. Required.</dd>
<dt>--catalog-id (string)</dt>
<dd>The ID of the catalog to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--project-id (string)</dt>
<dd>The ID of the project to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--space-id (string)</dt>
<dd>The ID of the space to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--test (bool)</dt>
<dd>Whether to test the connection before saving it. By default an attempt to establish a connection will be made, and the connection will not be saved if the connection cannot be established.</dd>
<dd>The default value is `true`.</dd>
</dl>

<a id='64'></a>
## connection list-actions

Lists all supported actions for the connection.

```sh
cpdctl connection list-actions --connection-id CONNECTION-ID [--accept-language ACCEPT-LANGUAGE] [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--connection-id (string)</dt>
<dd>The ID of the connection. Required.</dd>
<dt>--accept-language (string)</dt>
<dd>The user's preferred locale identifier.</dd>
<dd>The default value is `en-US`.</dd>
<dt>--catalog-id (string)</dt>
<dd>The ID of the catalog to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--project-id (string)</dt>
<dd>The ID of the project to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--space-id (string)</dt>
<dd>The ID of the space to use. catalog_id, project_id, or space_id is required.</dd>
</dl>

<a id='65'></a>
## connection perform-action

Performs an action on the data source accessed using the connection.

```sh
cpdctl connection perform-action --connection-id CONNECTION-ID --action-name ACTION-NAME --request REQUEST [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--connection-id (string)</dt>
<dd>The ID of the connection. Required.</dd>
<dt>--action-name (string)</dt>
<dd>The name of the action to be performed. This list is expanded over time. The current actions are:

| action                | description                                                              |
| --------------------- | ------------------------------------------------------------------------ |
| get_oauth2_tokens     | to get refresh and authorization tokens for sources that support OAuth2. |
| get_record_count      | to get the number of records available for the specified asset.          |
| get_signed_url        | to get a signed URL for accessing a data source.                         |
| test                  | to check if a connection can be established to the data source.          |
| validate              | to validate the connection properties without establishing a connection. |. Required.</dd>
<dd>Allowable values are: get_oauth2_tokens, get_record_count, get_signed_url, test, validate</dd>
<dt>--request (generic map)</dt>
<dd>The perform action request configuration. Required.</dd>
<dt>--catalog-id (string)</dt>
<dd>The ID of the catalog to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--project-id (string)</dt>
<dd>The ID of the project to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--space-id (string)</dt>
<dd>The ID of the space to use. catalog_id, project_id, or space_id is required.</dd>
</dl>

<a id='66'></a>
## connection discover

Discovers assets from the data source accessed via the connection.

```sh
cpdctl connection discover --connection-id CONNECTION-ID --path PATH [--catalog-id CATALOG-ID] [--project-id PROJECT-ID] [--space-id SPACE-ID] [--data-asset-id DATA-ASSET-ID] [--data-asset-catalog-id DATA-ASSET-CATALOG-ID] [--data-asset-project-id DATA-ASSET-PROJECT-ID] [--data-asset-space-id DATA-ASSET-SPACE-ID] [--limit LIMIT] [--offset OFFSET] [--fetch FETCH] [--detail DETAIL] [--context CONTEXT] [--properties PROPERTIES] [--filters FILTERS] 
```


#### Command options

<dl> 
<dt>--connection-id (string)</dt>
<dd>The ID of the connection. Required.</dd>
<dt>--path (string)</dt>
<dd>Path of the asset. Required.</dd>
<dt>--catalog-id (string)</dt>
<dd>The ID of the catalog to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--project-id (string)</dt>
<dd>The ID of the project to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--space-id (string)</dt>
<dd>The ID of the space to use. catalog_id, project_id, or space_id is required.</dd>
<dt>--data-asset-id (string)</dt>
<dd>The ID of the data asset.</dd>
<dt>--data-asset-catalog-id (string)</dt>
<dd>The ID of the catalog that contains the data asset.</dd>
<dt>--data-asset-project-id (string)</dt>
<dd>The ID of the project that contains the data asset.</dd>
<dt>--data-asset-space-id (string)</dt>
<dd>The ID of the space that contains the data asset.</dd>
<dt>--limit (int64)</dt>
<dd>The limit of the number of items to return, for example limit=50. If not specified a default of 100 will be  used.</dd>
<dd>The minimum value is `1`.</dd>
<dt>--offset (int64)</dt>
<dd>The 0-based index of the first result to return, for example, offset=200. If not specified, the default offset of 0 is used.</dd>
<dd>The minimum value is `0`.</dd>
<dt>--fetch (string)</dt>
<dd>Specify whether to return the asset's metadata, the asset's data, interaction properties, connection properties, or data source type. If not specified, metadata is used by default. This parameter only applies when requesting details about a data set. To specify multiple fetch values, use a comma-separated string, such as fetch=data,metadata,interaction,connection,datasource_type.</dd>
<dt>--detail (bool)</dt>
<dd>Specify whether to return additional asset-specific details. If not specified, these details are not returned.</dd>
<dt>--context (string)</dt>
<dd>Specify whether assets are discovered for the purpose of reading (source) or writing (target). If not specified, source is used by default.</dd>
<dd>Allowable values are: source, target</dd>
<dt>--properties (string)</dt>
<dd>A JSON object containing a set of properties to configure aspects of the asset browsing.</dd>
<dt>--filters (string)</dt>
<dd>A JSON object containing a set of properties to define filtering of the assets to be returned.</dd>
</dl>

<a id='67'></a>
## connection datasource-type list

Gets all defined types of data sources.

The following fields are available for use with the sort parameter:

| field name   | description                                          |
| ------------ | ---------------------------------------------------- |
| entity.label | The name of the data source type in a readable form. |
| entity.type  | The major type of the data source type.              |.

```sh
cpdctl connection datasource-type list [--accept-language ACCEPT-LANGUAGE] [--sort SORT] [--offset OFFSET] [--limit LIMIT] [--connection-properties CONNECTION-PROPERTIES] [--interaction-properties INTERACTION-PROPERTIES] [--discovery DISCOVERY] [--actions ACTIONS] [--entity-environment ENTITY-ENVIRONMENT] [--entity-product ENTITY-PRODUCT] [--product-selector-scope PRODUCT-SELECTOR-SCOPE] 
```


#### Command options

<dl> 
<dt>--accept-language (string)</dt>
<dd>The user's preferred locale identifier.</dd>
<dd>The default value is `en-US`.</dd>
<dt>--sort (string)</dt>
<dd>The field to sort the results on, including whether to sort ascending (+) or descending (-), for example, sort=-metadata.create_time.</dd>
<dt>--offset (int64)</dt>
<dd>The 0-based index of the first result to return, for example, offset=200. If not specified, the default offset of 0 is used.</dd>
<dd>The minimum value is `0`.</dd>
<dt>--limit (int64)</dt>
<dd>The limit of the number of items to return, for example limit=50. If not specified a default of 100 will be  used.</dd>
<dd>The minimum value is `1`.</dd>
<dt>--connection-properties (bool)</dt>
<dd>Whether to return information about the connection properties.</dd>
<dt>--interaction-properties (bool)</dt>
<dd>Whether to return information about the source and target interaction properties.</dd>
<dt>--discovery (bool)</dt>
<dd>Whether to return information about discovery capabilities.</dd>
<dt>--actions (bool)</dt>
<dd>Whether to return information about supported actions.</dd>
<dt>--entity-environment (string)</dt>
<dd>Specify the environment the data source types must support to be included in the returned list. The available environments are 'cloud', 'streams' and 'local'. If no entity.environment is specified, the default for service's deploy environment is used. To specify multiple environments, use a comma-separated string, such as entity.environment=cloud,streams.</dd>
<dt>--entity-product (string)</dt>
<dd>Specify the product the data source types must support to be included in the returned list. The available products are 'catalog', 'cpd', 'datastage', 'dv', 'igc', 'mdi', 'ml' and 'studio'. If no entity.product is specified, the default for service's deploy product is used. To specify multiple products, use a comma-separated string, such as entity.product=catalog,studio.</dd>
<dt>--product-selector-scope (string)</dt>
<dd>Scope of ui-only product selector property. Applies to output under common_properties key. Genreated ui contains additional checkbox to switch between first of the requested products and the rest. If only a single one is given it switches between that product and remaining products supported by the data source.</dd>
<dd>Allowable values are: global, context</dd>
</dl>

<a id='68'></a>
## connection datasource-type get

Get details for type of data source.

```sh
cpdctl connection datasource-type get --datasource-type DATASOURCE-TYPE [--accept-language ACCEPT-LANGUAGE] [--connection-properties CONNECTION-PROPERTIES] [--interaction-properties INTERACTION-PROPERTIES] [--discovery DISCOVERY] [--actions ACTIONS] [--entity-environment ENTITY-ENVIRONMENT] [--entity-product ENTITY-PRODUCT] [--product-selector-scope PRODUCT-SELECTOR-SCOPE] 
```


#### Command options

<dl> 
<dt>--datasource-type (string)</dt>
<dd>The data source type. Required.</dd>
<dt>--accept-language (string)</dt>
<dd>The user's preferred locale identifier.</dd>
<dd>The default value is `en-US`.</dd>
<dt>--connection-properties (bool)</dt>
<dd>Whether to return information about connection properties.</dd>
<dt>--interaction-properties (bool)</dt>
<dd>Whether to return information about source and target interaction properties.</dd>
<dt>--discovery (bool)</dt>
<dd>Whether to return information about discovery capabilities.</dd>
<dt>--actions (bool)</dt>
<dd>Whether to return information about supported actions.</dd>
<dt>--entity-environment (string)</dt>
<dd>Specify the environment the data source type must support to be returned. The available environments are 'cloud', 'streams' and 'local'. If no entity.environment is specified, no filtering is applied. To specify multiple environments, use a comma-separated string, such as entity.environment=cloud,streams.</dd>
<dt>--entity-product (string)</dt>
<dd>Specify the product the data source type must support to be returned. The available products are 'catalog', 'cpd', 'datastage', 'dv', 'igc', 'mdi', 'ml' and 'studio'. If no entity.product is specified, no filtering is applied. To specify multiple products, use a comma-separated string, such as entity.product=catalog,studio.</dd>
<dt>--product-selector-scope (string)</dt>
<dd>Scope of ui-only product selector property. Applies to output under common_properties key. Genreated ui contains additional checkbox to switch between first of the requested products and the rest. If only a single one is given it switches between that product and remaining products supported by the data source.</dd>
<dd>Allowable values are: global, context</dd>
</dl>

<a id='69'></a>
## environment list

List all environments in a given project, filtered by type. Includes all default environments, which are available in every project.

```sh
cpdctl environment list [--project-id PROJECT-ID] [--space-id SPACE-ID] [--types TYPES] [--exclude-types EXCLUDE-TYPES] [--exclude-languages EXCLUDE-LANGUAGES] [--spark-versions SPARK-VERSIONS] 
```


#### Command options

<dl> 
<dt>--project-id (string)</dt>
<dd>The id of the project.</dd>
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
<dt>--types (string)</dt>
<dd>Comma-separated list of environment types. Defaults to list of all types.</dd>
<dt>--exclude-types (string)</dt>
<dd>Comma-separated list of environment types. Takes precedence over types. Defaults to empty list.</dd>
<dt>--exclude-languages (string)</dt>
<dd>Comma-separated list of kernel names. Defaults to empty list.</dd>
<dt>--spark-versions (string)</dt>
<dd>Comma-separated list of Spark versions. If provided, the response only contains default_spark environments of that version. Defaults to all supported Spark versions.</dd>
</dl>

<a id='70'></a>
## environment create

Create a new environment.

```sh
cpdctl environment create --display-name DISPLAY-NAME --hardware-specification HARDWARE-SPECIFICATION --name NAME --software-specification SOFTWARE-SPECIFICATION --type TYPE [--authorization-variables AUTHORIZATION-VARIABLES] [--compute-specification COMPUTE-SPECIFICATION] [--description DESCRIPTION] [--environment-variables ENVIRONMENT-VARIABLES] [--location LOCATION] [--runtime-idle-time RUNTIME-IDLE-TIME] [--tools-specification TOOLS-SPECIFICATION] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--display-name (string)</dt>
<dd>Display name of the environment. Required.</dd>
<dt>--hardware-specification (<a href="#cli-referenced-specification-example-schema-environment">ReferencedSpecification</a>)</dt>
<dd>A pointer to a sub-specification that was defined elsewhere. Required.</dd>
<dt>--name (string)</dt>
<dd>Name of the environment. Required.</dd>
<dt>--software-specification (<a href="#cli-referenced-specification-example-schema-environment">ReferencedSpecification</a>)</dt>
<dd>A pointer to a sub-specification that was defined elsewhere. Required.</dd>
<dt>--type (string)</dt>
<dd>Type of the environment. Required.</dd>
<dt>--authorization-variables (generic map)</dt>
<dd>Authorization variables for the environment.</dd>
<dt>--compute-specification (generic map)</dt>
<dd>Compute specification of the environment.</dd>
<dt>--description (string)</dt>
<dd>Description of the environment.</dd>
<dt>--environment-variables (generic map)</dt>
<dd>Environment variables for the environment.</dd>
<dt>--location (generic map)</dt>
<dd>Runtime location for the environment.</dd>
<dt>--runtime-idle-time (int64)</dt>
<dd>Runtime idle timeout.</dd>
<dt>--tools-specification (generic map)</dt>
<dd>Tools specification for the environment.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project.</dd>
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
</dl>

<a id='71'></a>
## environment delete

Delete a particular environment.

```sh
cpdctl environment delete --environment-id ENVIRONMENT-ID [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--environment-id (string)</dt>
<dd>The guid of the environment. Required.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project.</dd>
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
</dl>

<a id='72'></a>
## environment get

Retrieve a particular environment.

```sh
cpdctl environment get --environment-id ENVIRONMENT-ID [--project-id PROJECT-ID] [--space-id SPACE-ID] [--response-format RESPONSE-FORMAT] 
```


#### Command options

<dl> 
<dt>--environment-id (string)</dt>
<dd>The guid of the environment. Required.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project.</dd>
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
<dt>--response-format (string)</dt>
<dd>Format the response. Defaults to none.</dd>
</dl>

<a id='73'></a>
## environment update

Update a particular environment.

```sh
cpdctl environment update --environment-id ENVIRONMENT-ID --project-id PROJECT-ID [--authorization-variables AUTHORIZATION-VARIABLES] [--compute-specification COMPUTE-SPECIFICATION] [--display-name DISPLAY-NAME] [--environment-variables ENVIRONMENT-VARIABLES] [--hardware-specification HARDWARE-SPECIFICATION] [--location LOCATION] [--runtime-idle-time RUNTIME-IDLE-TIME] [--software-specification SOFTWARE-SPECIFICATION] [--tools-specification TOOLS-SPECIFICATION] [--description DESCRIPTION] [--name NAME] 
```


#### Command options

<dl> 
<dt>--environment-id (string)</dt>
<dd>The guid of the environment. Required.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project. Required.</dd>
<dt>--authorization-variables (generic map)</dt>
<dd>Authorization variables for the environment.</dd>
<dt>--compute-specification (generic map)</dt>
<dd>Compute specification of the environment.</dd>
<dt>--display-name (string)</dt>
<dd>Display name of the environment.</dd>
<dt>--environment-variables (generic map)</dt>
<dd>Environment variables for the environment.</dd>
<dt>--hardware-specification (generic map)</dt>
<dd>Hardware specification of the environment.</dd>
<dt>--location (generic map)</dt>
<dd>Runtime location for the environment.</dd>
<dt>--runtime-idle-time (int64)</dt>
<dd>Runtime idle timeout.</dd>
<dt>--software-specification (generic map)</dt>
<dd>Software specification of the environment.</dd>
<dt>--tools-specification (generic map)</dt>
<dd>Tools specification for the environment.</dd>
<dt>--description (string)</dt>
<dd>Description of the environment.</dd>
<dt>--name (string)</dt>
<dd>Name of the environment.</dd>
</dl>

<a id='74'></a>
## environment hardware-specification list

List all hardware specifications.

Always includes all global (default and custom) hardware specifications, independent of whether space_id or project_id is present. When specifying project_id or space_id (parameters that are mutually exclusive, i.e., cannot both be provided), the list includes
(1) all scoped hardware specifications scoped to that project or space, respectively.
(2) all global default hardware specifications.
(3) all global custom hardware specifications.

If project_id or space_id is provided, access permissions for the requesting user follow `/v2/assets` rules for projects or spaces, respectively. If neither project_id nor space_id are provided, returns only global (default and custom) hardware specifications, which can be retrieved by any WSL/CPD user. Alternatively, the hardware specifications of any scope (any project, any space, or global hardware specifications) may be retrieved by Service Auth.

```sh
cpdctl environment hardware-specification list [--space-id SPACE-ID] [--project-id PROJECT-ID] [--name NAME] 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project.</dd>
<dt>--name (string)</dt>
<dd>The name of the hardware specification. If specified, each of the hardware specification in the returned list will have the specified name.</dd>
</dl>

<a id='75'></a>
## environment hardware-specification create

Create a new hardware specification.

Specify either space_id or project_id, or none of them. This makes 3 valid cases, which are:

(1) When specifying project_id, the hardware specification is scoped to that particular project only.
(2) When specifying space_id, the hardware specification is scoped to that particular space only.
(3) When specifying no scope (neither project_id nor space_id), the hardware specification is a global custom hardware specification.

Global default hardware specifications are read from a well-known location on disk, and therefore cannot be created through the API.

Authorization rules for (1) and (2) follow those for `/v2/assets` for projects and spaces, respectively. Alternatively, the request is authorized for a valid authentication by Service Auth. Only WSL/CPD administrators are authorized to make a request of type (3) - global custom software specifications. Alternatively, the request is authorized for a valid authentication by Service Auth.

You can only provide one of `nodes` or `spark`, not both at the same time.

```sh
cpdctl environment hardware-specification create --name NAME [--description DESCRIPTION] [--nodes NODES] [--spark SPARK] [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--name (string)</dt>
<dd>Name of hardware specification. Required.</dd>
<dt>--description (string)</dt>
<dd>Description of hardware specification.</dd>
<dt>--nodes (<a href="#cli-hardware-specification-nodes-definition-example-schema-environment">HardwareSpecificationNodesDefinition</a>)</dt>
<dd>Compute node definition of hardware specification.</dd>
<dt>--spark (<a href="#cli-hardware-specification-spark-definition-example-schema-environment">HardwareSpecificationSparkDefinition</a>)</dt>
<dd>Spark definition of hardware specification.</dd>
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project in which to create the hardware specification.</dd>
</dl>

<a id='76'></a>
## environment hardware-specification delete

Delete a particular hardware specification`.

Specify either space_id or project_id, or none of them. This makes 3 valid cases, which are:

(1) When specifying project_id, the hardware specification is scoped to that particular project only.
(2) When specifying space_id, the hardware specification is scoped to that particular space only.
(3) When specifying no scope (neither project_id nor space_id), the hardware specification must a global custom hardware specification.

Global default hardware specifications are read from a well-known location on disk, and therefore cannot be deleted through the API.

Authorization rules for (1) and (2) follow those for `/v2/assets` for projects and spaces, respectively. Alternatively, the request is authorized for a valid authentication by Service Auth. Only WSL/CPD administrators are authorized to make a request of type (3) - global custom hardware specifications. Alternatively, the request is authorized for a valid authentication by Service Auth.

```sh
cpdctl environment hardware-specification delete --hardware-specification-id HARDWARE-SPECIFICATION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--hardware-specification-id (string)</dt>
<dd>The guid of the hardware specification. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project.</dd>
</dl>

<a id='77'></a>
## environment hardware-specification get

Retrieve a particular hardware specification.

Specify either space_id or project_id, or none of them. This makes 4 valid cases, which are:

(1) When specifying project_id, the returned hardware specification can be a
  (a) Hardware specification that is scoped to that project only.
  (b) Global hardware specification as global hardware specifications are valid in any scope.
(2) When specifying space_id, the returned hardware specification can be a
  (a) Hardware specification that is scoped to that space only.
  (b) Global hardware specification as global hardware specifications are valid in any scope.
(3) When specifying no scope (neither project_id nor space_id), and the hardware specification is a global custom hardware specification.
(4) When specifying no scope (neither project_id nor space_id), and the hardware specification is a global default hardware specification.

(1) and (2) follow authorization rules of `/v2/assets` for project and space access, respectively. Alternatively, the request is authorized for a valid authentication by Service Auth.
(3) and (4) retrieve global hardware specifications, which any WSL/CPD user is authorized for.

```sh
cpdctl environment hardware-specification get --hardware-specification-id HARDWARE-SPECIFICATION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--hardware-specification-id (string)</dt>
<dd>The guid of the hardware specification. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project.</dd>
</dl>

<a id='78'></a>
## environment hardware-specification update

Update a particular hardware specification.

Specify either space_id or project_id, or none of them. This makes 3 valid cases, which are:

(1) When specifying project_id, the hardware specification is scoped to that particular project only.
(2) When specifying space_id, the hardware specification is scoped to that particular space only.
(3) When specifying no scope (neither project_id nor space_id), the hardware specification must a global custom hardware specification.

Global default hardware specifications are read from a well-known location on disk, and therefore cannot be updated through the API.

Authorization rules for (1) and (2) follow those for `/v2/assets` for projects and spaces, respectively. Alternatively, the request is authorized for a valid authentication by Service Auth. Only WSL/CPD administrators are authorized to make a request of type (3) - global custom hardware specifications. Alternatively, the request is authorized for a valid authentication by Service Auth.

```sh
cpdctl environment hardware-specification update --hardware-specification-id HARDWARE-SPECIFICATION-ID [--cpu-model CPU-MODEL] [--cpu-units CPU-UNITS] [--gpu-name GPU-NAME] [--gpu-num GPU-NUM] [--mem-size MEM-SIZE] [--nodes-num NODES-NUM] [--spark-driver-cpu-model SPARK-DRIVER-CPU-MODEL] [--spark-driver-cpu-units SPARK-DRIVER-CPU-UNITS] [--spark-driver-mem-size SPARK-DRIVER-MEM-SIZE] [--spark-executor-cpu-model SPARK-EXECUTOR-CPU-MODEL] [--spark-executor-cpu-units SPARK-EXECUTOR-CPU-UNITS] [--spark-executor-mem-size SPARK-EXECUTOR-MEM-SIZE] [--spark-drivers-num SPARK-DRIVERS-NUM] [--spark-executors-num SPARK-EXECUTORS-NUM] [--description DESCRIPTION] [--name NAME] [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--hardware-specification-id (string)</dt>
<dd>The guid of the hardware specification. Required.</dd>
<dt>--cpu-model (string)</dt>
<dd>Model of CPU.</dd>
<dt>--cpu-units (string)</dt>
<dd>Number of CPUs.</dd>
<dt>--gpu-name (string)</dt>
<dd>Name of GPUs.</dd>
<dt>--gpu-num (string)</dt>
<dd>Number of GPUs.</dd>
<dt>--mem-size (string)</dt>
<dd>Size of memory (in Kubernetes size strings).</dd>
<dt>--nodes-num (int64)</dt>
<dd>Number of compute nodes.</dd>
<dt>--spark-driver-cpu-model (string)</dt>
<dd>Model of Spark driver CPUs.</dd>
<dt>--spark-driver-cpu-units (string)</dt>
<dd>Number of Spark driver CPUs.</dd>
<dt>--spark-driver-mem-size (int64)</dt>
<dd>Memory size of Spark driver.</dd>
<dt>--spark-executor-cpu-model (string)</dt>
<dd>Model of Spark executor CPUs.</dd>
<dt>--spark-executor-cpu-units (string)</dt>
<dd>Number of Spark executor CPUs.</dd>
<dt>--spark-executor-mem-size (int64)</dt>
<dd>Memory size of Spark executor.</dd>
<dt>--spark-drivers-num (int64)</dt>
<dd>Number of Spark drivers.</dd>
<dt>--spark-executors-num (int64)</dt>
<dd>Number of Spark executors.</dd>
<dt>--description (string)</dt>
<dd>Description of the hardware specification.</dd>
<dt>--name (string)</dt>
<dd>Name of the hardware specification.</dd>
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project.</dd>
</dl>

<a id='79'></a>
## environment package-extension list

List all Package Extensions.

Returns all package extensions within the given project or space. Authorization rules for package extensions follow those of `/v2/assets` for projects or spaces.

```sh
cpdctl environment package-extension list [--space-id SPACE-ID] [--project-id PROJECT-ID] [--name NAME] [--type TYPE] 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project.</dd>
<dt>--name (string)</dt>
<dd>Returning only those package extensions that have a particular name.</dd>
<dt>--type (string)</dt>
<dd>Returning only those package extensions that have a particular type.</dd>
<dd>Allowable values are: conda_yml, pip_zip</dd>
</dl>

<a id='80'></a>
## environment package-extension create

Create a new package extension.

The new package extension is created in the given project or space, depending on whether project_id or space_id is provided. Authorization rules for package extensions follow those of `/v2/assets` for projects or spaces. For uploading the pip_zip or conda_yml, once you have created a package extension, the response also contains a pre-signed URL, which allows you to upload its contents. When the upload is complete, you MUST call
`POST /v2/package_extensions/{package_extension_guid}/upload_complete` to indicate the API that the package extension is usable. If the `/upload_complete` returns successfully, the package extension is usable, i.e., can be assigned to a software specification.

```sh
cpdctl environment package-extension create --name NAME --type TYPE [--description DESCRIPTION] [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--name (string)</dt>
<dd>The name of the package extension. Should be unique. Required.</dd>
<dt>--type (string)</dt>
<dd>The type of the package extension. Required.</dd>
<dd>Allowable values are: pip_zip, conda_yml</dd>
<dt>--description (string)</dt>
<dd>The description of the package extension. Can be any string.</dd>
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project in which to create the package extension.</dd>
</dl>

<a id='81'></a>
## environment package-extension delete

Delete a package extension.

Authorization rules for package extensions follow those of `/v2/assets` for projects or spaces.

```sh
cpdctl environment package-extension delete --package-extension-id PACKAGE-EXTENSION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--package-extension-id (string)</dt>
<dd>The UUID v4 identifying the package extension. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project.</dd>
</dl>

<a id='82'></a>
## environment package-extension get

Retrieve a particular package extension.

Authorization rules for package extensions follow those of `/v2/assets` for projects or spaces.

```sh
cpdctl environment package-extension get --package-extension-id PACKAGE-EXTENSION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--package-extension-id (string)</dt>
<dd>The UUID v4 identifying the package extension. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project.</dd>
</dl>

<a id='83'></a>
## environment package-extension update

Update a package extension. Authorization rules for package extensions follow those of `/v2/assets` for projects or spaces.

```sh
cpdctl environment package-extension update --package-extension-id PACKAGE-EXTENSION-ID [--type TYPE] [--description DESCRIPTION] [--name NAME] [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--package-extension-id (string)</dt>
<dd>A UUID v4 identifying the package extension. Required.</dd>
<dt>--type (string)</dt>
<dd>The type of the package extension. One would not normally want to change it.</dd>
<dd>Allowable values are: conda_yml, pip_zip</dd>
<dt>--description (string)</dt>
<dd>A description of the package extension.</dd>
<dt>--name (string)</dt>
<dd>The name of the package extension.</dd>
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project.</dd>
</dl>

<a id='84'></a>
## environment package-extension upload-complete

Indicate that the upload of the library file attached to the package extension is complete and this package extension is usable.

Authorization rules for package extensions follow those of `/v2/assets` for projects or spaces.

```sh
cpdctl environment package-extension upload-complete --package-extension-id PACKAGE-EXTENSION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--package-extension-id (string)</dt>
<dd>A UUID v4 identifying the package extension. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project.</dd>
</dl>

<a id='85'></a>
## environment software-specification list

List all software specifications.

Always includes all global (default and custom) software specifications, independent of whether space_id or project_id is present. When specifying project_id or space_id (parameters that are mutually exclusive, i.e., cannot both be provided), the list includes
(1) all 'derived' software specifications scoped to that project or space, respectively.
(2) all global default software specifications.
(3) all global custom software specifications.

If project_id or space_id is provided, access permissions for the requesting user follow `/v2/assets` rules for projects or spaces, respectively. If Service Auth is provided, access is granted for any project or space (given the service authentication is correct, of course). If neither project_id nor space_id are provided, returns only global (default and custom) software specifications, which can be retrieved by any WSL/CPD user.

```sh
cpdctl environment software-specification list [--space-id SPACE-ID] [--project-id PROJECT-ID] [--include-packages INCLUDE-PACKAGES] [--name NAME] 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project.</dd>
<dt>--include-packages (string)</dt>
<dd>String of comma-separated package names that refers to the packages that a software specification should contain. If specified, each of the software specification in the returned list will contain all of the packages specified in the query.</dd>
<dt>--name (string)</dt>
<dd>The name of the software specification. If specified, each of the software specification in the returned list will have the specified name.</dd>
</dl>

<a id='86'></a>
## environment software-specification create

Create a new software specification.

Specify either space_id or project_id, or none of them. This makes 3 valid cases, which are:

(1) When specifying project_id, the software specification is scoped to that particular project only, must therefore be of type 'derived'.
(2) When specifying space_id, the software specification is scoped to that particular space only, must therefore be of type 'derived'.
(3) When specifying no scope (neither project_id nor space_id), the software specification is a global custom software specification, and therefore of type 'base'.

Global default software specifications are read from a well-known location on disk, and therefore cannot be created through the API. Global custom and derived software specifications can be created though the API.

You can add any number of references to package extensions while creating a software specification by specifying the `package_extensions` array in the request body. Please note that apart from a syntax check, there is no validation on this package extension array. This is in contrast to the `PUT /v2/software_specifications/{software_specification_guid}/package_extensions/{package_extension_guid}` endpoint, which includes detailed validation. Only base software specification (i.e.,global custom) should have included_packages and platform in the request body. For a derived software specification, included_packages and platform are always resolved from the referenced base software specification and should not be specified in the request body.

Authorization rules for (1) and (2) follow those for `/v2/assets` for projects and spaces, respectively. Alternatively, the request is authorized for a valid authentication by Service Auth. Only WSL/CPD administrators are authorized to make a request of type (3) - global custom software specifications. Alternatively, the request is authorized for a valid authentication by Service Auth.

```sh
cpdctl environment software-specification create --name NAME --software-configuration SOFTWARE-CONFIGURATION [--base-software-specification BASE-SOFTWARE-SPECIFICATION] [--description DESCRIPTION] [--package-extensions PACKAGE-EXTENSIONS] [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--name (string)</dt>
<dd>Name of the software specification. Required.</dd>
<dt>--software-configuration (<a href="#cli-software-specification-entity-software-configuration-definition-example-schema-environment">SoftwareSpecificationEntitySoftwareConfigurationDefinition</a>)</dt>
<dd>Software configuration. Required.</dd>
<dt>--base-software-specification (<a href="#cli-base-software-specification-reference-example-schema-environment">BaseSoftwareSpecificationReference</a>)</dt>
<dd>A reference to a base software specification.</dd>
<dt>--description (string)</dt>
<dd>Description of the software specification.</dd>
<dt>--package-extensions (<a href="#cli-package-extension-reference-example-schema-environment">PackageExtensionReference[]</a>)</dt>
<dd>Package extensions of the software specification.</dd>
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project in which to create the software specification.</dd>
</dl>

<a id='87'></a>
## environment software-specification delete

Delete a particular software specification.

Specify either `space_id` or `project_id`, or none of them. This makes 3 valid cases, which are:

(1) When specifying project_id, the software specification is scoped to that particular project only, must therefore be of type 'derived'.
(2) When specifying space_id, the software specification is scoped to that particular space only, must therefore be of type 'derived'.
(3) When specifying no scope (neither project_id nor space_id), the software specification must a global custom software specification, and therefore of type 'base'.

Global default software specifications are read from a well-known location on disk, and therefore cannot be deleted through the API. Global custom and derived software specifications can be deleted through the API.

Authorization rules for (1) and (2) follow those for `/v2/assets` for projects and spaces, respectively. Alternatively, the request is authorized for a valid authentication by Service Auth. Only WSL/CPD administrators are authorized to make a request of type (3) - global custom software specifications. Alternatively, the request is authorized for a valid authentication by Service Auth.

```sh
cpdctl environment software-specification delete --software-specification-id SOFTWARE-SPECIFICATION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--software-specification-id (string)</dt>
<dd>The UUID v4 identifying the software specification. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project. The deleted software specification must be scoped to the specified project.</dd>
</dl>

<a id='88'></a>
## environment software-specification get

Retrieve a particular software specification.

Specify either space_id or project_id, or none of them. This makes 4 valid cases, which are:

(1) When specifying project_id, the returned software specification can be a
  (a) 'Derived' software specification that is scoped to that project only.
  (b) 'Base' software specification as global software specifications are valid in any scope.
(2) When specifying space_id, the returned software specification can be a
  (a) 'Derived' software specification that is scoped to that space only.
  (b) 'Base' software specification as global software specifications are valid in any scope.
(3) When specifying no scope (neither project_id nor space_id), and the software specification is a global custom software specification (and therefore of type 'base').
(4) When specifying no scope (neither project_id nor space_id), and the software specification is a global default software specification (and therefore of type 'base').

(1) and (2) follow authorization rules of `/v2/assets` for project and space access, respectively. Alternatively, the request is authorized for a valid authentication by Service Auth.
(3) and (4) retrieve global software specifications, which any WSL/CPD user is authorized for.

Derived software specifications inherit the values of the `entity.software_specification.software_configuration.included_packages` and `entity.software_specification.software_configuration.platform` properties from the `entity.software_specification.base_software_specification` they reference.

```sh
cpdctl environment software-specification get --software-specification-id SOFTWARE-SPECIFICATION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--software-specification-id (string)</dt>
<dd>The UUID v4 identifying the software specification. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project.</dd>
</dl>

<a id='89'></a>
## environment software-specification update

Update a particular software specification.

Specify project_id, or no scope. This makes 2 valid cases, which are:

(1) When specifying project_id, the software specification is scoped to that particular project only, must therefore be of type 'derived'.
(2) When specifying no scope, the software specification must a global custom software specification, and therefore of type 'base'.

Global default software specifications are read from a well-known location on disk, and therefore cannot be updated through the API.

Software specifications scoped to a particular space cannot be updated. Instead, update a software specification in a project (case 1), and promote it to a space.

Authorization rules for (1) follows those for `/v2/assets` for projects and spaces, respectively. Alternatively, the request is authorized for a valid authentication by Service Auth. Only WSL/CPD administrators are authorized to make a request of type (2) - global custom software specifications. Alternatively, the request is authorized for a valid authentication by Service Auth.

```sh
cpdctl environment software-specification update --software-specification-id SOFTWARE-SPECIFICATION-ID [--display-name DISPLAY-NAME] [--description DESCRIPTION] [--name NAME] [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--software-specification-id (string)</dt>
<dd>A UUID v4 identifying the software specification. Required.</dd>
<dt>--display-name (string)</dt>
<dd>Software specification display name.</dd>
<dt>--description (string)</dt>
<dd>Software specification description.</dd>
<dt>--name (string)</dt>
<dd>Software specification name.</dd>
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project.</dd>
</dl>

<a id='90'></a>
## environment software-specification remove-package-extensions

Remove a particular package extension from a particular software specification. When successful, the specified package extension is **removed** from the array `entity.software_specification.package_extensions`.

Specify either `project_id`, or `space_id`.

```sh
cpdctl environment software-specification remove-package-extensions --software-specification-id SOFTWARE-SPECIFICATION-ID --package-extension-id PACKAGE-EXTENSION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--software-specification-id (string)</dt>
<dd>A UUID v4 identifying the software specification. Required.</dd>
<dt>--package-extension-id (string)</dt>
<dd>A UUID v4 identifying the package extension. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project.</dd>
</dl>

<a id='91'></a>
## environment software-specification add-package-extensions

Add a particular package extension to a particular software specification. When successful, the specified package extension is **appended** to the array `entity.software_specification.package_extensions`, i.e., it is then the last package extension in that array.

Specify either `project_id`, or `space_id`.

The request is valid if and only if:
  1. The software specification identified by `software_specification_guid` and the package extension identified by `package_extension_guid` exist in the same scope (either project or space).
  2. A successful POST `/v2/package_extensions/{package_extension_guid}/upload_complete` has been called before this request is initiated, i.e., the upload of the referenced pip_zip or conda_yml file has been indicated to have been successful.
  3. The user is authorized to update the software specification asset.

```sh
cpdctl environment software-specification add-package-extensions --software-specification-id SOFTWARE-SPECIFICATION-ID --package-extension-id PACKAGE-EXTENSION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--software-specification-id (string)</dt>
<dd>A UUID v4 identifying the software specification. Required.</dd>
<dt>--package-extension-id (string)</dt>
<dd>A UUID v4 identifying the package extension. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The id of the space.</dd>
<dt>--project-id (string)</dt>
<dd>The id of the project.</dd>
</dl>

<a id='92'></a>
## notebook create

The creation of a notebook requires to first upload the notebook content('ipynb' format) to the project Cloud Object Storage (COS) with the following command: 
`cpdctl assets files upload --path <your remote path to the notebook content> --file <your local path to the notebook content> --project-id <your project id>`.  Usually the remote path could be 'notebook/<your file name>'. 

Then you can create a notebook by referencing the notebook content with the attribute 'file-reference'.  The other required attributes are 'name', 'project' and 'runtime'/'compute', e.g.
`cpdctl notebooks create --name <your notebook name> --project <your project id> --file-reference <your remote path to the notebook content> --runtime '{"environment": "<your environment id>"}'`. 

The attributes 'runtime' and 'compute' are used to specify the environment on which the notebook runs.  You can specify the environment either by the attribute 'runtime' if the engine is a 'default environment', 'Spark default environment' or a 'GPU environment' or by the attribute 'compute' if the engine is a 'Spark-aaS'.  A basic runtime can be defined as '{"environment": <your environment id>}'.

```sh
cpdctl notebook create [--compute COMPUTE] [--description DESCRIPTION] [--file-reference FILE-REFERENCE] [--kernel KERNEL] [--name NAME] [--originates-from ORIGINATES-FROM] [--project PROJECT] [--runtime RUNTIME] 
```


#### Command options

<dl> 
<dt>--compute (string)</dt>
<dd>The id of the Spark-as-a-Service on which the notebook runs.</dd>
<dt>--description (string)</dt>
<dd>A more verbose description of the notebook.</dd>
<dt>--file-reference (string)</dt>
<dd>The reference to the file in the object storage.</dd>
<dt>--kernel (<a href="#cli-notebook-kernel-example-schema-notebook">NotebookKernel</a>)</dt>
<dd>A notebook kernel.</dd>
<dt>--name (string)</dt>
<dd>The name of the new notebook.</dd>
<dt>--originates-from (<a href="#cli-notebook-origin-example-schema-notebook">NotebookOrigin</a>)</dt>
<dd>The notebook origin.</dd>
<dt>--project (string)</dt>
<dd>The id of the project in which to create the notebook.</dd>
<dt>--runtime (<a href="#cli-notebook-runtime-example-schema-notebook">NotebookRuntime</a>)</dt>
<dd>A notebook runtime.</dd>
</dl>

<a id='93'></a>
## notebook delete

Delete a particular notebook, including the notebook asset.

```sh
cpdctl notebook delete --notebook-id NOTEBOOK-ID 
```


#### Command options

<dl> 
<dt>--notebook-id (string)</dt>
<dd>The guid of the notebook. Required.</dd>
</dl>

<a id='94'></a>
## notebook update

Update a particular notebook.

```sh
cpdctl notebook update --notebook-id NOTEBOOK-ID [--compute COMPUTE] [--environment ENVIRONMENT] [--kernel KERNEL] [--schedule SCHEDULE] [--shares SHARES] [--spark-monitoring-enabled SPARK-MONITORING-ENABLED] 
```


#### Command options

<dl> 
<dt>--notebook-id (string)</dt>
<dd>The guid of the notebook. Required.</dd>
<dt>--compute (string)</dt>
<dd>The id of the Spark instance on which the notebook runs.</dd>
<dt>--environment (string)</dt>
<dd>The id of the environment on which the notebook runs.</dd>
<dt>--kernel (<a href="#cli-notebook-kernel-example-schema-notebook">NotebookKernel</a>)</dt>
<dd>A notebook kernel.</dd>
<dt>--schedule (string)</dt>
<dd>The id of the schedule of the notebook.</dd>
<dt>--shares (<a href="#cli-notebook-shares-example-schema-notebook">NotebookShares</a>)</dt>
<dd>Share and repository information for a notebook.</dd>
<dt>--spark-monitoring-enabled (bool)</dt>
<dd>Spark monitoring enabled or not.</dd>
</dl>

<a id='95'></a>
## notebook revert

Revert the master notebook to a version.

```sh
cpdctl notebook revert --notebook-id NOTEBOOK-ID [--source SOURCE] 
```


#### Command options

<dl> 
<dt>--notebook-id (string)</dt>
<dd>The guid of the master notebook. Required.</dd>
<dt>--source (string)</dt>
<dd>The id of the notebook version.</dd>
</dl>

<a id='96'></a>
## notebook version list

List all versions of a particular notebook.

```sh
cpdctl notebook version list --notebook-id NOTEBOOK-ID 
```


#### Command options

<dl> 
<dt>--notebook-id (string)</dt>
<dd>The guid of the notebook. Required.</dd>
</dl>

<a id='97'></a>
## notebook version create

Create a version of a given notebook.

```sh
cpdctl notebook version create --notebook-id NOTEBOOK-ID 
```


#### Command options

<dl> 
<dt>--notebook-id (string)</dt>
<dd>The guid of the notebook. Required.</dd>
</dl>

<a id='98'></a>
## notebook version delete

Delete a particular version of a given notebook.

```sh
cpdctl notebook version delete --notebook-id NOTEBOOK-ID --version-id VERSION-ID 
```


#### Command options

<dl> 
<dt>--notebook-id (string)</dt>
<dd>The guid of the notebook. Required.</dd>
<dt>--version-id (string)</dt>
<dd>The guid of the version. Required.</dd>
</dl>

<a id='99'></a>
## notebook version get

Retrieve a particular version of a notebook.

```sh
cpdctl notebook version get --notebook-id NOTEBOOK-ID --version-id VERSION-ID 
```


#### Command options

<dl> 
<dt>--notebook-id (string)</dt>
<dd>The guid of the notebook. Required.</dd>
<dt>--version-id (string)</dt>
<dd>The guid of the version. Required.</dd>
</dl>

<a id='100'></a>
## notebook version update

Update a version of a given notebook.

```sh
cpdctl notebook version update --notebook-id NOTEBOOK-ID --version-id VERSION-ID [--kernel KERNEL] [--schedule SCHEDULE] 
```


#### Command options

<dl> 
<dt>--notebook-id (string)</dt>
<dd>The guid of the notebook. Required.</dd>
<dt>--version-id (string)</dt>
<dd>The guid of the version. Required.</dd>
<dt>--kernel (<a href="#cli-notebook-kernel-example-schema-notebook">NotebookKernel</a>)</dt>
<dd>A notebook kernel.</dd>
<dt>--schedule (string)</dt>
<dd>The schedule id of the notebook.</dd>
</dl>

<a id='101'></a>
## job list

Lists the jobs in the specified project or space (either project_id or space_id must be set).

```sh
cpdctl job list [--project-id PROJECT-ID] [--space-id SPACE-ID] [--asset-ref ASSET-REF] [--asset-ref-type ASSET-REF-TYPE] [--run-id RUN-ID] [--limit LIMIT] 
```


#### Command options

<dl> 
<dt>--project-id (string)</dt>
<dd>The ID of the project to use. project_id or space_id is required.</dd>
<dt>--space-id (string)</dt>
<dd>The ID of the space to use. project_id or space_id is required.</dd>
<dt>--asset-ref (string)</dt>
<dd>Optionally get all jobs associated with a particular asset.</dd>
<dt>--asset-ref-type (string)</dt>
<dd>Optionally get all jobs associated with the particular asset ref type.</dd>
<dt>--run-id (string)</dt>
<dd>The ID of the job run. Can be used to search parent job of a job run.</dd>
<dt>--limit (int64)</dt>
<dd>The limit of the number of items to return, for example limit=50. If not specified a default of 100 will be used.</dd>
</dl>

<a id='102'></a>
## job create

Creates a new job in the specified project or space (either project_id or space_id must be set).

```sh
cpdctl job create [--job JOB] [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--job (<a href="#cli-job-post-body-job-example-schema-job">JobPostBodyJob</a>)</dt>
<dd></dd>
<dt>--project-id (string)</dt>
<dd>The ID of the project to use. project_id or space_id is required.</dd>
<dt>--space-id (string)</dt>
<dd>The ID of the space to use. project_id or space_id is required.</dd>
</dl>

<a id='103'></a>
## job delete

Deletes a specific job in a project or space (either project_id or space_id must be set). If the deletion of the job and its runs will take some time to finish, then a 202 response will be returned and the deletion will continue asynchronously. All the jobs runs associated with the job will also be deleted. If the job is still running, it will not be deleted.

```sh
cpdctl job delete --job-id JOB-ID [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--job-id (string)</dt>
<dd>The ID of the job to use. Each job has a unique ID. Required.</dd>
<dt>--project-id (string)</dt>
<dd>The ID of the project to use. project_id or space_id is required.</dd>
<dt>--space-id (string)</dt>
<dd>The ID of the space to use. project_id or space_id is required.</dd>
</dl>

<a id='104'></a>
## job get

Gets the info for a single job associated from the specified project or space (either project_id or space_id must be set).

```sh
cpdctl job get --job-id JOB-ID [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--job-id (string)</dt>
<dd>The ID of the job to use. Each job has a unique ID. Required.</dd>
<dt>--project-id (string)</dt>
<dd>The ID of the project to use. project_id or space_id is required.</dd>
<dt>--space-id (string)</dt>
<dd>The ID of the space to use. project_id or space_id is required.</dd>
</dl>

<a id='105'></a>
## job run list

Lists the job runs for a specific job in the specified project or space (either project_id or space_id must be set). Only the metadata and certain elements of the entity component of each run are returned.

```sh
cpdctl job run list --job-id JOB-ID [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--job-id (string)</dt>
<dd>The ID of the job to use. Each job has a unique ID. Required.</dd>
<dt>--project-id (string)</dt>
<dd>The ID of the project to use. project_id or space_id is required.</dd>
<dt>--space-id (string)</dt>
<dd>The ID of the space to use. project_id or space_id is required.</dd>
</dl>

<a id='106'></a>
## job run create

Starts the specified job contained in a project or space (either project_id or space_id must be set).

```sh
cpdctl job run create --job-id JOB-ID --job-run JOB-RUN [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--job-id (string)</dt>
<dd>The ID of the job to use. Each job has a unique ID. Required.</dd>
<dt>--job-run (<a href="#cli-job-run-post-body-job-run-example-schema-job">JobRunPostBodyJobRun</a>)</dt>
<dd> Required.</dd>
<dt>--project-id (string)</dt>
<dd>The ID of the project to use. project_id or space_id is required.</dd>
<dt>--space-id (string)</dt>
<dd>The ID of the space to use. project_id or space_id is required.</dd>
</dl>

<a id='107'></a>
## job run delete

Delete the specified job run in a project or space (either project_id or space_id must be set).

```sh
cpdctl job run delete --job-id JOB-ID --run-id RUN-ID [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--job-id (string)</dt>
<dd>The ID of the job to use. Each job has a unique ID. Required.</dd>
<dt>--run-id (string)</dt>
<dd>The ID of the job run. Required.</dd>
<dt>--project-id (string)</dt>
<dd>The ID of the project to use. project_id or space_id is required.</dd>
<dt>--space-id (string)</dt>
<dd>The ID of the space to use. project_id or space_id is required.</dd>
</dl>

<a id='108'></a>
## job run get

Gets the info for a single job run from the specified project or space (either project_id or space_id must be set).

```sh
cpdctl job run get --job-id JOB-ID --run-id RUN-ID [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--job-id (string)</dt>
<dd>The ID of the job to use. Each job has a unique ID. Required.</dd>
<dt>--run-id (string)</dt>
<dd>The ID of the job run. Required.</dd>
<dt>--project-id (string)</dt>
<dd>The ID of the project to use. project_id or space_id is required.</dd>
<dt>--space-id (string)</dt>
<dd>The ID of the space to use. project_id or space_id is required.</dd>
</dl>

<a id='109'></a>
## job run cancel

Cancels a job run that is in the running state.

```sh
cpdctl job run cancel --job-id JOB-ID --run-id RUN-ID --body BODY [--project-id PROJECT-ID] [--space-id SPACE-ID] 
```


#### Command options

<dl> 
<dt>--job-id (string)</dt>
<dd>The ID of the job to use. Each job has a unique ID. Required.</dd>
<dt>--run-id (string)</dt>
<dd>The ID of the job run. Required.</dd>
<dt>--body (generic map)</dt>
<dd>An empty body. Required.</dd>
<dt>--project-id (string)</dt>
<dd>The ID of the project to use. project_id or space_id is required.</dd>
<dt>--space-id (string)</dt>
<dd>The ID of the space to use. project_id or space_id is required.</dd>
</dl>

<a id='110'></a>
## job run logs

Gets the logs for a job run in the specified project or space (either project_id or space_id must be set).

```sh
cpdctl job run logs --job-id JOB-ID --run-id RUN-ID [--project-id PROJECT-ID] [--space-id SPACE-ID] [--limit LIMIT] 
```


#### Command options

<dl> 
<dt>--job-id (string)</dt>
<dd>The ID of the job to use. Each job has a unique ID. Required.</dd>
<dt>--run-id (string)</dt>
<dd>The ID of the job run. Required.</dd>
<dt>--project-id (string)</dt>
<dd>The ID of the project to use. project_id or space_id is required.</dd>
<dt>--space-id (string)</dt>
<dd>The ID of the space to use. project_id or space_id is required.</dd>
<dt>--limit (int64)</dt>
<dd>The limit of the number of lines to return, for example limit=50. If not specified, all log will be returned.</dd>
</dl>

<a id='111'></a>
## job run download-results
Downloads the results of the complete job run to the locations pointed in `outputs`, which defines a output map (e.g. 'VAR1=/tml/outputs/var1
VAR2=/tml/outputs/var2').

```sh
  cpdctl job run download-results --outputs OUTPUTS --run-id RUN_ID [--project-id PROJECT_ID] [--space-id SPACE_ID]
```
#### Command options

<dl>
<dt>--cpd-scope string  </dt><dd>CPD space or project scope, e.g. 'cpd://default-context/spaces/7bccdda4-9752-4f37-868e-891de6c48135'</dd>
<dt>--outputs string    </dt><dd>The list of results to be downloaded (JSON array with objects: '{"name": "<variable-name>", "path": "<output-path>"}').</dd>
<dt>--progress          </dt><dd>Show download progress. (default true)</dd>
<dt>--project-id string </dt><dd>The ID of the project to use. project-id or space-id is required.</dd>
<dt>--run-id string     </dt><dd>The ID of the job run.</dd>
<dt>--space-id string   </dt><dd>The ID of the space to use. project-id or space-id is required.</dd>
</dl>

<a id='112'></a>
## job run wait
Wait until the job run becomes completed, failed, or canceled.

```sh
  cpdctl job run wait --job-id JOB_ID --run-id RUN_ID [--project-id PROJECT_ID] [--space-id SPACE_ID]
```
#### Command options

<dl>
<dt>--cpd-scope string  </dt><dd>CPD space or project scope, e.g. 'cpd://default-context/spaces/7bccdda4-9752-4f37-868e-891de6c48135'</dd>
<dt>--job-id string     </dt><dd>The ID of the job to use. Each job has a unique ID.</dd>
<dt>--project-id string </dt><dd>The ID of the project to use. project-id or space-id is required.</dd>
<dt>--run-id string     </dt><dd>The ID of the job run.</dd>
<dt>--space-id string   </dt><dd>The ID of the space to use. project-id or space-id is required.</dd>
</dl>

<a id='113'></a>
## ml deployment create

Create a new model, function or Python Script application deployment.

```sh
cpdctl ml deployment create --space-id SPACE-ID [--tags TAGS] [--name NAME] [--description DESCRIPTION] [--custom CUSTOM] [--asset ASSET] [--hardware-spec HARDWARE-SPEC] [--hybrid-pipeline-hardware-specs HYBRID-PIPELINE-HARDWARE-SPECS] [--online ONLINE] [--batch BATCH] [--virtual VIRTUAL] 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Required.</dd>
<dt>--tags ([]string)</dt>
<dd>Tags that can be used when searching for resources.</dd>
<dt>--name (string)</dt>
<dd>The name of the deployment.</dd>
<dt>--description (string)</dt>
<dd>A description of the deployment.</dd>
<dt>--custom (interface{})</dt>
<dd>User defined properties specified as key-value pairs.</dd>
<dt>--asset (<a href="#cli-rel-example-schema-ml">Rel</a>)</dt>
<dd>A reference to a resource.</dd>
<dt>--hardware-spec (<a href="#cli-hardware-spec-rel-example-schema-ml">HardwareSpecRel</a>)</dt>
<dd>A hardware specification.</dd>
<dt>--hybrid-pipeline-hardware-specs (<a href="#cli-job-entity-result-hybrid-pipeline-hardware-specs-item-example-schema-ml">JobEntityResultHybridPipelineHardwareSpecsItem[]</a>)</dt>
<dd>Hybrid pipeline hardware specification.</dd>
<dt>--online (<a href="#cli-deployment-entity-request-online-example-schema-ml">DeploymentEntityRequestOnline</a>)</dt>
<dd>Indicates that this is an online deployment. An empty object has to be specified.
More properties will be added later on to setup the online deployment.</dd>
<dt>--batch (<a href="#cli-deployment-entity-request-batch-example-schema-ml">DeploymentEntityRequestBatch</a>)</dt>
<dd>Indicates that this is a batch deployment. An empty object has to be specified.
More properties will be added later on to setup the batch deployment.</dd>
<dt>--virtual (<a href="#cli-deployment-entity-request-virtual-example-schema-ml">DeploymentEntityRequestVirtual</a>)</dt>
<dd>Indicates that this is a virtual deployment.</dd>
</dl>

<a id='114'></a>
## ml deployment list

Retrieve the list of deployments for the specified space.

```sh
cpdctl ml deployment list [--space-id SPACE-ID] [--tag-value TAG-VALUE] [--asset-id ASSET-ID] [--name NAME] [--type TYPE] [--state STATE] [--stats STATS] 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>Retrieves the deployments of assets that belong to this space.</dd>
<dt>--tag-value (string)</dt>
<dd>Retrieves only the resources with the given tag value.</dd>
<dt>--asset-id (string)</dt>
<dd>Retrieves only the resources with the given asset_id, asset_id would be either model_id or function_id.</dd>
<dt>--name (string)</dt>
<dd>Retrieves only the resources with the given name.</dd>
<dt>--type (string)</dt>
<dd>Retrieves the resources filtered with the given type. Allowed values are `model`, `function`, `py_script` and `do`.</dd>
<dt>--state (string)</dt>
<dd>Retrieves the resources filtered by state. Allowed values are `initializing`, `updating`, `ready` and `failed`.</dd>
<dt>--stats (bool)</dt>
<dd>Returns stats about deployments within a space or across spaces if it is set to true. This query parameter cannot be combined with any other except for 'space_id'.</dd>
</dl>

<a id='115'></a>
## ml deployment get

Retrieve the deployment details with the specified identifier.

```sh
cpdctl ml deployment get --deployment-id DEPLOYMENT-ID --space-id SPACE-ID 
```


#### Command options

<dl> 
<dt>--deployment-id (string)</dt>
<dd>The deployment id. Required.</dd>
<dt>--space-id (string)</dt>
<dd>Retrieves the deployments of assets that belong to this space. Required.</dd>
</dl>

<a id='116'></a>
## ml deployment delete

Delete the deployment with the specified identifier.

```sh
cpdctl ml deployment delete --deployment-id DEPLOYMENT-ID --space-id SPACE-ID 
```


#### Command options

<dl> 
<dt>--deployment-id (string)</dt>
<dd>The deployment id. Required.</dd>
<dt>--space-id (string)</dt>
<dd>Retrieves the deployments of assets that belong to this space. Required.</dd>
</dl>

<a id='117'></a>
## ml deployment update

Update the deployment metadata. The following parameters of deployment metadata are supported for the patch operation.

* tags
* name
* description
* custom
* virtual.parameters
* hardware_spec
* hybrid_pipeline_hardware_specs
* asset

In case of online deployments, using PATCH operation of `/ml/v4/deployments`, users can update the number of copies of an online deployment. Users can specify the desired value of number of copies in `hardware_spec.num_nodes` parameter. As `hardware_spec.name` or `hardware_spec.id` is mandatory for `hardware_spec` schema, a valid value such as `XS`, `S` must be specified for `hardware_spec.name` parameter as part of PATCH request. Alternatively, users can also specify a valid ID of a hardware specification in `hardware_spec.id` parameter. However, changes related to `hardware_spec.name` or `hardware_spec.id` specified in PATCH operation will not be applied for online deployments.
<br /> In case of batch deployments, using PATCH operation of `/ml/v4/deployments`, users can update the hardware specification so that subsequent batch deployment jobs can make use of the updated compute configurations. To update the compute configuration, users must specify a valid value for either `hardware_spec.name` or `hardware_spec.id` of the hardware specification that suits their requirement. In the batch deployment context, `hardware_spec.num_nodes` parameter is not currently supported.
<br /> When 'asset' is patched with id/rev,
   - Deployment with the patched id/rev is started.
   - If the deployment is asynchronous, 202 response code will be returned and one can poll the deployment status thereafter.
   - If the deployment is synchronous, 200 response code will be returned with patched deployment response.
   - If any failures, deployment will be reverted back to the previous id/rev and the failure message will be captured in 'failures' field in the response.

```sh
cpdctl ml deployment update --deployment-id DEPLOYMENT-ID --space-id SPACE-ID --json-patch JSON-PATCH 
```


#### Command options

<dl> 
<dt>--deployment-id (string)</dt>
<dd>The deployment id. Required.</dd>
<dt>--space-id (string)</dt>
<dd>Retrieves the deployments of assets that belong to this space. Required.</dd>
<dt>--json-patch (<a href="#cli-json-patch-operation-example-schema-ml">JSONPatchOperation[]</a>)</dt>
<dd>The json patch.</dd>
</dl>

<a id='118'></a>
## ml deployment compute-predictions

Execute a synchronous prediction for the deployment with the specified identifier.

```sh
cpdctl ml deployment compute-predictions --deployment-id DEPLOYMENT-ID --input-data INPUT-DATA 
```


#### Command options

<dl> 
<dt>--deployment-id (string)</dt>
<dd>The deployment id. Required.</dd>
<dt>--input-data (<a href="#cli-input-data-array-example-schema-ml">InputDataArray[]</a>)</dt>
<dd>The input data. Required.</dd>
</dl>

<a id='119'></a>
## ml deployment wait
Wait until the deployment becomes ready or failed.

```sh
  cpdctl ml deployment wait --deployment-id DEPLOYMENT_ID --space-id SPACE_ID
```
#### Command options

<dl>
<dt>--cpd-scope string     </dt><dd>CPD space scope, e.g. 'cpd://default-context/spaces/7bccdda4-9752-4f37-868e-891de6c48135'</dd>
<dt>--deployment-id string </dt><dd>The deployment ID.</dd>
<dt>--space-id string      </dt><dd>The ID of the space to use.</dd>
</dl>

<a id='120'></a>
## ml deployment-job list

Retrieve the status of the current jobs. The system will apply a max limit of jobs retained by the system as we cannot accumulate an infinite number of jobs. Only most recent 300 jobs (system configurable) will be preserved. Older jobs will be purged by the system.

```sh
cpdctl ml deployment-job list --space-id SPACE-ID [--tag-value TAG-VALUE] [--state STATE] [--deployment-id DEPLOYMENT-ID] [--include INCLUDE] 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>Retrieves the deployment jobs that belong to this space. Required.</dd>
<dt>--tag-value (string)</dt>
<dd>Retrieves only the jobs with these tags (comma separated).</dd>
<dt>--state (string)</dt>
<dd>Filter based on on the deployment job state: queued, running, completed, failed etc.</dd>
<dt>--deployment-id (string)</dt>
<dd>Filter based on the deployment_id.</dd>
<dt>--include (string)</dt>
<dd>Retrieves only fields from 'decision_optimization' and 'scoring' section mentioned as value(s)
(comma separated) as output response fields. Retrieves all the fields if not mentioned.</dd>
</dl>

<a id='121'></a>
## ml deployment-job create

Start a deployment job asynchronously. This can perform batch scoring, streaming, or other types of batch operations, such as solving a Decision Optimization problem.

```sh
cpdctl ml deployment-job create [--space-id SPACE-ID] [--name NAME] [--description DESCRIPTION] [--tags TAGS] [--deployment DEPLOYMENT] [--custom CUSTOM] [--hardware-spec HARDWARE-SPEC] [--hybrid-pipeline-hardware-specs HYBRID-PIPELINE-HARDWARE-SPECS] [--scoring SCORING] [--decision-optimization DECISION-OPTIMIZATION] 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The space that contains the resource.</dd>
<dt>--name (string)</dt>
<dd>The name of the resource.</dd>
<dt>--description (string)</dt>
<dd>A description of the resource.</dd>
<dt>--tags ([]string)</dt>
<dd>A list of tags for this resource.</dd>
<dt>--deployment (<a href="#cli-simple-rel-example-schema-ml">SimpleRel</a>)</dt>
<dd>A reference to a resource.</dd>
<dt>--custom (interface{})</dt>
<dd>User defined properties.</dd>
<dt>--hardware-spec (<a href="#cli-hardware-spec-rel-example-schema-ml">HardwareSpecRel</a>)</dt>
<dd>A hardware specification.</dd>
<dt>--hybrid-pipeline-hardware-specs (<a href="#cli-job-entity-request-hybrid-pipeline-hardware-specs-item-example-schema-ml">JobEntityRequestHybridPipelineHardwareSpecsItem[]</a>)</dt>
<dd>Hybrid pipeline hardware specification.</dd>
<dt>--scoring (<a href="#cli-job-scoring-request-example-schema-ml">JobScoringRequest</a>)</dt>
<dd>Details about the input/output data and other properties to be used for a batch deployment job of a model,
Python Function or a Python Scripts.

Use `input_data` property to specify the input data for batch processing as part of the job's payload.
The `input_data` property is mutually exclusive with `input_data_references` property, only use one of these.
When `input_data` is specified, the processed output of batch deployment job will be available in `scoring.predictions`
parameter in the deployment job response. `input_data` property is not supported for batch deployment of Python Scripts.

Use `input_data_references` property to specify the details pertaining to the remote source where the input data for
batch deployment job is available. The `input_data_references` must be used with `output_data_references`.
The `input_data_references` property
is mutually exclusive with `input_data` property, only use one of these. The `input_data_references`
property is not supported for batch deployment job of Spark models and Python Functions.

Use `output_data_references` property to specify the details pertaining to the remote source where the input
data for batch deployment job is available. `output_data_references` must be used with `input_data_references`.
The `output_data_references`
property is not supported for batch deployment job of Spark models and Python Functions.</dd>
<dt>--decision-optimization (<a href="#cli-job-decision-optimization-request-example-schema-ml">JobDecisionOptimizationRequest</a>)</dt>
<dd>Details about the input/output data and other properties to be used for a batch
deployment job of a decision optimization problem.

Use `input_data` property to specify the input data for batch processing as part
of the job's payload. The `input_data` property is mutually exclusive with `input_data_references`
property, only use one of these. When `input_data` is specified, the processed output
of batch deployment job will be available in `scoring.predictions` parameter in the deployment job response.

Use `input_data_references` property to specify the details pertaining to the remote source
where the input data for batch deployment job is available. The `input_data_references` must be used
with `output_data_references`.
The `input_data_references` property is mutually exclusive with `input_data` property, only use one of these.

Use `output_data_references` property to specify the details pertaining to the remote source where the
input data for batch deployment job is available. The `output_data_references` must be used with `input_data_references`.</dd>
</dl>

<a id='122'></a>
## ml deployment-job delete

Cancel the specified deployment job.

```sh
cpdctl ml deployment-job delete --job-id JOB-ID --space-id SPACE-ID [--hard-delete HARD-DELETE] 
```


#### Command options

<dl> 
<dt>--job-id (string)</dt>
<dd>The id of the job. Required.</dd>
<dt>--space-id (string)</dt>
<dd>Cancel the deployment job that belong to this space. Required.</dd>
<dt>--hard-delete (bool)</dt>
<dd>Set to true in order to also delete the job metadata information.</dd>
</dl>

<a id='123'></a>
## ml deployment-job get

Retrieve the deployment job. The predicted data bound to this job_id is going to be kept around for a limited time based on the service configuration.

```sh
cpdctl ml deployment-job get --job-id JOB-ID --space-id SPACE-ID [--include INCLUDE] 
```


#### Command options

<dl> 
<dt>--job-id (string)</dt>
<dd>The id of the job. Required.</dd>
<dt>--space-id (string)</dt>
<dd>Retrieve the deployment job that belong to this space. Required.</dd>
<dt>--include (string)</dt>
<dd>Retrieves only fields from 'decision_optimization' and 'scoring' section mentioned as value(s)
(comma separated) as output response fields. Retrieves all the fields if not mentioned.</dd>
</dl>

<a id='124'></a>
## ml deployment-job-definition create

Create a new deployment job definition with the given payload. A deployment job definition represents the deployment metadata information in order to create a batch job in WML. This contains the same metadata used by the /ml/v4/deployment_jobs endpoint. This means that when submitting batch deployment jobs the user can either provide the job definition inline or reference a job definition in a query parameter.

```sh
cpdctl ml deployment-job-definition create --space-id SPACE-ID --name NAME --deployment DEPLOYMENT [--description DESCRIPTION] [--tags TAGS] [--custom CUSTOM] [--hardware-spec HARDWARE-SPEC] [--hybrid-pipeline-hardware-specs HYBRID-PIPELINE-HARDWARE-SPECS] [--scoring SCORING] [--decision-optimization DECISION-OPTIMIZATION] 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Required.</dd>
<dt>--name (string)</dt>
<dd>The name of the resource. Required.</dd>
<dt>--deployment (<a href="#cli-simple-rel-example-schema-ml">SimpleRel</a>)</dt>
<dd>A reference to a resource. Required.</dd>
<dt>--description (string)</dt>
<dd>A description of the resource.</dd>
<dt>--tags ([]string)</dt>
<dd>A list of tags for this resource.</dd>
<dt>--custom (interface{})</dt>
<dd>User defined properties.</dd>
<dt>--hardware-spec (<a href="#cli-hardware-spec-rel-example-schema-ml">HardwareSpecRel</a>)</dt>
<dd>A hardware specification.</dd>
<dt>--hybrid-pipeline-hardware-specs (<a href="#cli-job-entity-request-hybrid-pipeline-hardware-specs-item-example-schema-ml">JobEntityRequestHybridPipelineHardwareSpecsItem[]</a>)</dt>
<dd>Hybrid pipeline hardware specification.</dd>
<dt>--scoring (<a href="#cli-job-scoring-request-example-schema-ml">JobScoringRequest</a>)</dt>
<dd>Details about the input/output data and other properties to be used for a batch deployment job of a model,
Python Function or a Python Scripts.

Use `input_data` property to specify the input data for batch processing as part of the job's payload.
The `input_data` property is mutually exclusive with `input_data_references` property, only use one of these.
When `input_data` is specified, the processed output of batch deployment job will be available in `scoring.predictions`
parameter in the deployment job response. `input_data` property is not supported for batch deployment of Python Scripts.

Use `input_data_references` property to specify the details pertaining to the remote source where the input data for
batch deployment job is available. The `input_data_references` must be used with `output_data_references`.
The `input_data_references` property
is mutually exclusive with `input_data` property, only use one of these. The `input_data_references`
property is not supported for batch deployment job of Spark models and Python Functions.

Use `output_data_references` property to specify the details pertaining to the remote source where the input
data for batch deployment job is available. `output_data_references` must be used with `input_data_references`.
The `output_data_references`
property is not supported for batch deployment job of Spark models and Python Functions.</dd>
<dt>--decision-optimization (<a href="#cli-job-decision-optimization-request-example-schema-ml">JobDecisionOptimizationRequest</a>)</dt>
<dd>Details about the input/output data and other properties to be used for a batch
deployment job of a decision optimization problem.

Use `input_data` property to specify the input data for batch processing as part
of the job's payload. The `input_data` property is mutually exclusive with `input_data_references`
property, only use one of these. When `input_data` is specified, the processed output
of batch deployment job will be available in `scoring.predictions` parameter in the deployment job response.

Use `input_data_references` property to specify the details pertaining to the remote source
where the input data for batch deployment job is available. The `input_data_references` must be used
with `output_data_references`.
The `input_data_references` property is mutually exclusive with `input_data` property, only use one of these.

Use `output_data_references` property to specify the details pertaining to the remote source where the
input data for batch deployment job is available. The `output_data_references` must be used with `input_data_references`.</dd>
</dl>

<a id='125'></a>
## ml deployment-job-definition list

Retrieve the deployment job definitions for the specified space.

```sh
cpdctl ml deployment-job-definition list --space-id SPACE-ID [--start START] [--limit LIMIT] [--tag-value TAG-VALUE] 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Required.</dd>
<dt>--start (string)</dt>
<dd>Token required for token-based pagination. This token cannot be determined by end user. It is generated by the service and it is set in the href available in the `next` field.</dd>
<dt>--limit (int64)</dt>
<dd>How many resources should be returned. By default limit is 100. Max limit allowed is 200.</dd>
<dd>The maximum value is `200`. The minimum value is `1`.</dd>
<dt>--tag-value (string)</dt>
<dd>Return only the resources with the given tag value.</dd>
</dl>

<a id='126'></a>
## ml deployment-job-definition get

Retrieve the deployment job definition with the specified identifier. If `rev` query parameter is provided,
`rev=latest` will fetch the latest revision. A call with `rev={revision_number}` will fetch the given revision_number record.

```sh
cpdctl ml deployment-job-definition get --job-definition-id JOB-DEFINITION-ID --space-id SPACE-ID [--rev REV] 
```


#### Command options

<dl> 
<dt>--job-definition-id (string)</dt>
<dd>Deployment job definition identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Required.</dd>
<dt>--rev (string)</dt>
<dd>The revision number of the resource.</dd>
</dl>

<a id='127'></a>
## ml deployment-job-definition update

Update the deployment job definition with the provided patch data. The following fields can be patched:
- `/tags`
- `/name`
- `/description`
- `/custom`
- `/deployment`.

```sh
cpdctl ml deployment-job-definition update --job-definition-id JOB-DEFINITION-ID --space-id SPACE-ID --json-patch JSON-PATCH 
```


#### Command options

<dl> 
<dt>--job-definition-id (string)</dt>
<dd>Deployment job definition identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Required.</dd>
<dt>--json-patch (<a href="#cli-json-patch-operation-example-schema-ml">JSONPatchOperation[]</a>)</dt>
<dd>Input For Patch. This is the patch body which corresponds to the JavaScript Object Notation (JSON) Patch standard (RFC 6902).</dd>
</dl>

<a id='128'></a>
## ml deployment-job-definition delete

Delete the deployment job definition with the specified identifier. This will delete all revisions of this deployment job definition as well. For each revision all attachments will also be deleted.

```sh
cpdctl ml deployment-job-definition delete --job-definition-id JOB-DEFINITION-ID --space-id SPACE-ID 
```


#### Command options

<dl> 
<dt>--job-definition-id (string)</dt>
<dd>Deployment job definition identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Required.</dd>
</dl>

<a id='129'></a>
## ml deployment-job-definition create-revision

Create a new deployment job definition revision. The current metadata and content for job_definition_id will be taken and a new revision created. This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml deployment-job-definition create-revision --job-definition-id JOB-DEFINITION-ID --space-id SPACE-ID [--commit-message COMMIT-MESSAGE] 
```


#### Command options

<dl> 
<dt>--job-definition-id (string)</dt>
<dd>Deployment job definition identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Required.</dd>
<dt>--commit-message (string)</dt>
<dd>An optional commit message for the revision.</dd>
</dl>

<a id='130'></a>
## ml deployment-job-definition list-revisions

Retrieve the deployment job definition revisions. This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml deployment-job-definition list-revisions --job-definition-id JOB-DEFINITION-ID --space-id SPACE-ID [--start START] [--limit LIMIT] 
```


#### Command options

<dl> 
<dt>--job-definition-id (string)</dt>
<dd>Deployment job definition identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Required.</dd>
<dt>--start (string)</dt>
<dd>Token required for token-based pagination. This token cannot be determined by end user. It is generated by the service and it is set in the href available in the `next` field.</dd>
<dt>--limit (int64)</dt>
<dd>How many resources should be returned. By default limit is 100. Max limit allowed is 200.</dd>
<dd>The maximum value is `200`. The minimum value is `1`.</dd>
</dl>

<a id='131'></a>
## ml experiment create

Create a new experiment with the given payload. An experiment represents an asset that captures a set of `pipeline` or `model definition` assets that will be trained at the same time on the same data set.

```sh
cpdctl ml experiment create --name NAME [--project-id PROJECT-ID] [--space-id SPACE-ID] [--description DESCRIPTION] [--tags TAGS] [--label-column LABEL-COLUMN] [--evaluation-definition EVALUATION-DEFINITION] [--training-references TRAINING-REFERENCES] [--custom CUSTOM] 
```


#### Command options

<dl> 
<dt>--name (string)</dt>
<dd>The name of the resource. Either `space_id` or `project_id` has to be provided and is mandatory. Required.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--description (string)</dt>
<dd>A description of the resource.</dd>
<dt>--tags ([]string)</dt>
<dd>A list of tags for this resource.</dd>
<dt>--label-column (string)</dt>
<dd>The label column.</dd>
<dt>--evaluation-definition (<a href="#cli-evaluation-definition-example-schema-ml">EvaluationDefinition</a>)</dt>
<dd>The optional evaluation definition.</dd>
<dt>--training-references (<a href="#cli-training-reference-example-schema-ml">TrainingReference[]</a>)</dt>
<dd>The optional training references used by the experiment.</dd>
<dt>--custom (interface{})</dt>
<dd>User defined properties specified as key-value pairs.</dd>
</dl>

<a id='132'></a>
## ml experiment list

Retrieve the experiments for the specified space or project.

```sh
cpdctl ml experiment list [--space-id SPACE-ID] [--project-id PROJECT-ID] [--start START] [--limit LIMIT] [--tag-value TAG-VALUE] 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--start (string)</dt>
<dd>Token required for token-based pagination. This token cannot be determined by end user. It is generated by the service and it is set in the href available in the `next` field.</dd>
<dt>--limit (int64)</dt>
<dd>How many resources should be returned. By default limit is 100. Max limit allowed is 200.</dd>
<dd>The maximum value is `200`. The minimum value is `1`.</dd>
<dt>--tag-value (string)</dt>
<dd>Return only the resources with the given tag value.</dd>
</dl>

<a id='133'></a>
## ml experiment get

Retrieve the experiment with the specified identifier. If `rev` query parameter is provided,
`rev=latest` will fetch the latest revision. A call with `rev={revision_number}` will fetch the given revision_number record. Either `space_id` or `project_id` has to be provided and is mandatory.

```sh
cpdctl ml experiment get --experiment-id EXPERIMENT-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--rev REV] 
```


#### Command options

<dl> 
<dt>--experiment-id (string)</dt>
<dd>Experiment identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--rev (string)</dt>
<dd>The revision number of the resource.</dd>
</dl>

<a id='134'></a>
## ml experiment update

Update the experiment with the provided patch data. The following fields can be patched:
- `/tags`
- `/name`
- `/description`
- `/custom`.

```sh
cpdctl ml experiment update --experiment-id EXPERIMENT-ID --json-patch JSON-PATCH [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--experiment-id (string)</dt>
<dd>Experiment identifier. Required.</dd>
<dt>--json-patch (<a href="#cli-json-patch-operation-example-schema-ml">JSONPatchOperation[]</a>)</dt>
<dd>Input For Patch. This is the patch body which corresponds to the JavaScript Object Notation (JSON) Patch standard (RFC 6902).</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
</dl>

<a id='135'></a>
## ml experiment delete

Delete the experiment with the specified identifier. This will delete all revisions of this experiment as well. For each revision all attachments will also be deleted.

```sh
cpdctl ml experiment delete --experiment-id EXPERIMENT-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--experiment-id (string)</dt>
<dd>Experiment identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
</dl>

<a id='136'></a>
## ml experiment create-revision

Create a new experiment revision. The current metadata and content for experiment_id will be taken and a new revision created. Either `space_id` or `project_id` has to be provided and is mandatory.

```sh
cpdctl ml experiment create-revision --experiment-id EXPERIMENT-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--commit-message COMMIT-MESSAGE] 
```


#### Command options

<dl> 
<dt>--experiment-id (string)</dt>
<dd>Experiment identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--commit-message (string)</dt>
<dd>An optional commit message for the revision.</dd>
</dl>

<a id='137'></a>
## ml experiment list-revisions

Retrieve the experiment revisions.

```sh
cpdctl ml experiment list-revisions --experiment-id EXPERIMENT-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--start START] [--limit LIMIT] 
```


#### Command options

<dl> 
<dt>--experiment-id (string)</dt>
<dd>Experiment identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--start (string)</dt>
<dd>Token required for token-based pagination. This token cannot be determined by end user. It is generated by the service and it is set in the href available in the `next` field.</dd>
<dt>--limit (int64)</dt>
<dd>How many resources should be returned. By default limit is 100. Max limit allowed is 200.</dd>
<dd>The maximum value is `200`. The minimum value is `1`.</dd>
</dl>

<a id='138'></a>
## ml function create

Create a new function with the given payload. A function is some code that can be deployed as an online, or batch deployment.

```sh
cpdctl ml function create --name NAME --software-spec SOFTWARE-SPEC [--project-id PROJECT-ID] [--space-id SPACE-ID] [--description DESCRIPTION] [--tags TAGS] [--type TYPE] [--sample-scoring-input SAMPLE-SCORING-INPUT] [--schemas SCHEMAS] [--custom CUSTOM] 
```


#### Command options

<dl> 
<dt>--name (string)</dt>
<dd>The name of the resource. Either `space_id` or `project_id` has to be provided and is mandatory. Required.</dd>
<dt>--software-spec (<a href="#cli-software-spec-rel-example-schema-ml">SoftwareSpecRel</a>)</dt>
<dd>A software specification. Required.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--description (string)</dt>
<dd>A description of the resource.</dd>
<dt>--tags ([]string)</dt>
<dd>A list of tags for this resource.</dd>
<dt>--type (string)</dt>
<dd>Type of the function to be created. Only `python` type is supported as of now. If not specified, `python` is the default. Functions expect a gzip file that contains a python file that make up the function. Python functions specify what needs to be run when the function is deployed and what needs to be run when the scoring function is called. In other words, you are able to customize what preparation WML does in the environment when you deploy the function, as well as what steps WML takes to generate the output when you call the API later on. The function consists of the outer function (any place that is not within the score function) and the inner score function. The code that sits in the outer function runs when the function is deployed, and the environment is then frozen and ready to be used whenever the online scoring or batch inline job processing API is called. The code that sits in the inner score function runs when the online scoring or batch inline job processing API is called, in the environment customized by the outer function. See [Deploying Python function](https://dataplatform.cloud.ibm.com/docs/content/wsj/analyze-data/ml-deploy-functions.html?audience=wdp&context=wdp) for more details.

This is illustrated in the example below:

>&lt;python code used to set up the environment&gt; \
>\
>def score(payload): \
>&nbsp;&nbsp;&nbsp;&nbsp;df_payload = pd.DataFrame(payload["values"]) \
>&nbsp;&nbsp;&nbsp;&nbsp;df_payload.columns = payload["fields"] \
>&nbsp;&nbsp;&nbsp;&nbsp;... \
>&nbsp;&nbsp;&nbsp;&nbsp;output = {"result" : res} \
>&nbsp;&nbsp;&nbsp;&nbsp;return output \
>\
>return score.</dd>
<dd>The default value is `python`.</dd>
<dt>--sample-scoring-input (<a href="#cli-sync-scoring-data-example-schema-ml">SyncScoringData</a>)</dt>
<dd>Scoring data.</dd>
<dt>--schemas (<a href="#cli-function-entity-schemas-example-schema-ml">FunctionEntitySchemas</a>)</dt>
<dd></dd>
<dt>--custom (interface{})</dt>
<dd>User defined properties specified as key-value pairs.</dd>
</dl>

<a id='139'></a>
## ml function list

Retrieve the functions for the specified space or project.

```sh
cpdctl ml function list [--space-id SPACE-ID] [--project-id PROJECT-ID] [--start START] [--limit LIMIT] [--tag-value TAG-VALUE] 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--start (string)</dt>
<dd>Token required for token-based pagination. This token cannot be determined by end user. It is generated by the service and it is set in the href available in the `next` field.</dd>
<dt>--limit (int64)</dt>
<dd>How many resources should be returned. By default limit is 100. Max limit allowed is 200.</dd>
<dd>The maximum value is `200`. The minimum value is `1`.</dd>
<dt>--tag-value (string)</dt>
<dd>Return only the resources with the given tag value.</dd>
</dl>

<a id='140'></a>
## ml function get

Retrieve the function with the specified identifier. If `rev` query parameter is provided,
`rev=latest` will fetch the latest revision. A call with `rev={revision_number}` will fetch the given revision_number record. Either `space_id` or `project_id` has to be provided and is mandatory.

```sh
cpdctl ml function get --function-id FUNCTION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--rev REV] 
```


#### Command options

<dl> 
<dt>--function-id (string)</dt>
<dd>Function identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--rev (string)</dt>
<dd>The revision number of the resource.</dd>
</dl>

<a id='141'></a>
## ml function update

Update the function with the provided patch data. The following fields can be patched:
- `/tags`
- `/name`
- `/description`
- `/custom`.

```sh
cpdctl ml function update --function-id FUNCTION-ID --json-patch JSON-PATCH [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--function-id (string)</dt>
<dd>Function identifier. Required.</dd>
<dt>--json-patch (<a href="#cli-json-patch-operation-example-schema-ml">JSONPatchOperation[]</a>)</dt>
<dd>Input For Patch. This is the patch body which corresponds to the JavaScript Object Notation (JSON) Patch standard (RFC 6902).</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
</dl>

<a id='142'></a>
## ml function delete

Delete the function with the specified identifier. This will delete all revisions of this function as well. For each revision all attachments will also be deleted.

```sh
cpdctl ml function delete --function-id FUNCTION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--function-id (string)</dt>
<dd>Function identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
</dl>

<a id='143'></a>
## ml function create-revision

Create a new function revision. The current metadata and content for function_id will be taken and a new revision created. Either `space_id` or `project_id` has to be provided and is mandatory.

```sh
cpdctl ml function create-revision --function-id FUNCTION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--commit-message COMMIT-MESSAGE] 
```


#### Command options

<dl> 
<dt>--function-id (string)</dt>
<dd>Function identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--commit-message (string)</dt>
<dd>An optional commit message for the revision.</dd>
</dl>

<a id='144'></a>
## ml function list-revisions

Retrieve the function revisions.

```sh
cpdctl ml function list-revisions --function-id FUNCTION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--start START] [--limit LIMIT] 
```


#### Command options

<dl> 
<dt>--function-id (string)</dt>
<dd>Function identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--start (string)</dt>
<dd>Token required for token-based pagination. This token cannot be determined by end user. It is generated by the service and it is set in the href available in the `next` field.</dd>
<dt>--limit (int64)</dt>
<dd>How many resources should be returned. By default limit is 100. Max limit allowed is 200.</dd>
<dd>The maximum value is `200`. The minimum value is `1`.</dd>
</dl>

<a id='145'></a>
## ml function upload-code

Upload the function code. Functions expect a zip file that contains a python file     that make up the function. Python functions specify what needs to be run when     the function is deployed and what needs to be run when the scoring function is     called. In other words, you are able to customize what preparation WML does in     the environment when you deploy the function, as well as what steps WML takes to     generate the output when you call the API later on. The function consists of the     outer function (any place that is not within the score function) and the inner     score function. The code that sits in the outer function runs when the function     is deployed, and the environment is then frozen and ready to be used whenever     the online scoring or batch inline job processing API is called. The code that     sits in the inner score function runs when the online scoring or batch inline     job processing API is called, in the environment customized by the outer function.     See [Deploying Python function](https://dataplatform.cloud.ibm.com/docs/content/wsj/analyze-data/ml-deploy-functions.html?audience=wdp${content_description}context=wdp) for more details.         This is illustrated in the example below:        <pre> <br />     ...python code used to set up the environment... <br />     <br />     def score(payload): <br />         df_payload = pd.DataFrame(payload[values]) <br />         df_payload.columns = payload[fields] <br />         ... <br />         output = {result : res} <br />         return output <br />     <br />     return score <br />     </pre>.

```sh
cpdctl ml function upload-code --function-id FUNCTION-ID --upload-code UPLOAD-CODE [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--function-id (string)</dt>
<dd>Function identifier. Required.</dd>
<dt>--upload-code (io.ReadCloser)</dt>
<dd>A gzip file containing code files. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
</dl>

<a id='146'></a>
## ml function download-code

Download the function code. It is possible to get the `code` for a given revision of the `function`. Functions expect a zip file that contains a python file     that make up the function. Python functions specify what needs to be run when     the function is deployed and what needs to be run when the scoring function is     called. In other words, you are able to customize what preparation WML does in     the environment when you deploy the function, as well as what steps WML takes to     generate the output when you call the API later on. The function consists of the     outer function (any place that is not within the score function) and the inner     score function. The code that sits in the outer function runs when the function     is deployed, and the environment is then frozen and ready to be used whenever     the online scoring or batch inline job processing API is called. The code that     sits in the inner score function runs when the online scoring or batch inline     job processing API is called, in the environment customized by the outer function.     See [Deploying Python function](https://dataplatform.cloud.ibm.com/docs/content/wsj/analyze-data/ml-deploy-functions.html?audience=wdp${content_description}context=wdp) for more details.         This is illustrated in the example below:        <pre> <br />     ...python code used to set up the environment... <br />     <br />     def score(payload): <br />         df_payload = pd.DataFrame(payload[values]) <br />         df_payload.columns = payload[fields] <br />         ... <br />         output = {result : res} <br />         return output <br />     <br />     return score <br />     </pre>.

```sh
cpdctl ml function download-code --function-id FUNCTION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--rev REV] 
```


#### Command options

<dl> 
<dt>--function-id (string)</dt>
<dd>Function identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--rev (string)</dt>
<dd>The revision number of the resource.</dd>
</dl>

<a id='147'></a>
## ml model create

Create a new model with the given payload. A model represents a machine learning model asset. If a `202` status is returned then the model will be ready when the
`content_import_state` in the model status (/ml/v4/models/{model_id}) is `completed`. If `content_import_state` is not used then a `201` status is returned.

```sh
cpdctl ml model create --name NAME --type TYPE --software-spec SOFTWARE-SPEC [--project-id PROJECT-ID] [--space-id SPACE-ID] [--description DESCRIPTION] [--tags TAGS] [--pipeline PIPELINE] [--model-definition MODEL-DEFINITION] [--hyper-parameters HYPER-PARAMETERS] [--domain DOMAIN] [--training-data-references TRAINING-DATA-REFERENCES] [--schemas SCHEMAS] [--label-column LABEL-COLUMN] [--transformed-label-column TRANSFORMED-LABEL-COLUMN] [--size SIZE] [--metrics METRICS] [--custom CUSTOM] [--user-defined-objects USER-DEFINED-OBJECTS] [--content-location CONTENT-LOCATION] 
```


#### Command options

<dl> 
<dt>--name (string)</dt>
<dd>The name of the resource. Either `space_id` or `project_id` has to be provided and is mandatory. Required.</dd>
<dt>--type (string)</dt>
<dd>The model type. The supported model types can be found in the documentation. Required.</dd>
<dt>--software-spec (<a href="#cli-software-spec-rel-example-schema-ml">SoftwareSpecRel</a>)</dt>
<dd>A software specification. Required.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--description (string)</dt>
<dd>A description of the resource.</dd>
<dt>--tags ([]string)</dt>
<dd>A list of tags for this resource.</dd>
<dt>--pipeline (<a href="#cli-rel-example-schema-ml">Rel</a>)</dt>
<dd>A reference to a resource.</dd>
<dt>--model-definition (<a href="#cli-model-definition-id-example-schema-ml">ModelDefinitionID</a>)</dt>
<dd>The model definition.</dd>
<dt>--hyper-parameters (interface{})</dt>
<dd>Hyper parameters used for training this model.</dd>
<dt>--domain (string)</dt>
<dd>User provided domain name for this model. For example: sentiment, entity, visual-recognition, finance, retail, real estate etc.</dd>
<dt>--training-data-references (<a href="#cli-data-connection-reference-example-schema-ml">DataConnectionReference[]</a>)</dt>
<dd>The training data that was used to create this model.</dd>
<dt>--schemas (<a href="#cli-model-entity-schemas-example-schema-ml">ModelEntitySchemas</a>)</dt>
<dd></dd>
<dt>--label-column (string)</dt>
<dd>The name of the label column.</dd>
<dt>--transformed-label-column (string)</dt>
<dd>The name of the  label column seen by the estimator, which may have been transformed by the previous transformers in the pipeline. This is not necessarily the same column as the `label_column` in the initial data set.</dd>
<dt>--size (<a href="#cli-model-entity-size-example-schema-ml">ModelEntitySize</a>)</dt>
<dd>This will be used by scoring to record the size of the model.</dd>
<dt>--metrics (<a href="#cli-metric-example-schema-ml">Metric[]</a>)</dt>
<dd>Metrics that can be returned by an operation.</dd>
<dt>--custom (interface{})</dt>
<dd>User defined properties specified as key-value pairs.</dd>
<dt>--user-defined-objects (map[string]string)</dt>
<dd>User defined objects referenced by the model. For any user defined class or function used in the model, its name, as referenced in the model, must be specified as the `key` and its fully qualified class or function name must be specified as the `value`. This is applicable for `Tensorflow 2.X` models serialized in `H5` format using the `tf.keras` API.</dd>
<dt>--content-location (<a href="#cli-content-location-example-schema-ml">ContentLocation</a>)</dt>
<dd>Details about the attachments that should be uploaded with this model.</dd>
</dl>

<a id='148'></a>
## ml model list

Retrieve the models for the specified space or project.

```sh
cpdctl ml model list [--space-id SPACE-ID] [--project-id PROJECT-ID] [--start START] [--limit LIMIT] [--tag-value TAG-VALUE] [--software-spec SOFTWARE-SPEC] 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--start (string)</dt>
<dd>Token required for token-based pagination. This token cannot be determined by end user. It is generated by the service and it is set in the href available in the `next` field.</dd>
<dt>--limit (int64)</dt>
<dd>How many resources should be returned. By default limit is 100. Max limit allowed is 200.</dd>
<dd>The maximum value is `200`. The minimum value is `1`.</dd>
<dt>--tag-value (string)</dt>
<dd>Return only the resources with the given tag value.</dd>
<dt>--software-spec (string)</dt>
<dd>Returns only resources having a dependency on this `software_spec`. The value is the `id` of the `software_spec`.</dd>
</dl>

<a id='149'></a>
## ml model get

Retrieve the model with the specified identifier. If `rev` query parameter is provided,
`rev=latest` will fetch the latest revision. A call with `rev={revision_number}` will fetch the given revision_number record. Either `space_id` or `project_id` has to be provided and is mandatory.

```sh
cpdctl ml model get --model-id MODEL-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--rev REV] 
```


#### Command options

<dl> 
<dt>--model-id (string)</dt>
<dd>Model identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--rev (string)</dt>
<dd>The revision number of the resource.</dd>
</dl>

<a id='150'></a>
## ml model update

Update the model with the provided patch data. The following fields can be patched:
- `/tags`
- `/name`
- `/description`
- `/custom`.

```sh
cpdctl ml model update --model-id MODEL-ID --json-patch JSON-PATCH [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--model-id (string)</dt>
<dd>Model identifier. Required.</dd>
<dt>--json-patch (<a href="#cli-json-patch-operation-example-schema-ml">JSONPatchOperation[]</a>)</dt>
<dd>Input For Patch. This is the patch body which corresponds to the JavaScript Object Notation (JSON) Patch standard (RFC 6902).</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
</dl>

<a id='151'></a>
## ml model delete

Delete the model with the specified identifier. This will delete all revisions of this model as well. For each revision all attachments will also be deleted.

```sh
cpdctl ml model delete --model-id MODEL-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--model-id (string)</dt>
<dd>Model identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
</dl>

<a id='152'></a>
## ml model create-revision

Create a new model revision. The current metadata and content for model_id will be taken and a new revision created. Either `space_id` or `project_id` has to be provided and is mandatory.

```sh
cpdctl ml model create-revision --model-id MODEL-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--commit-message COMMIT-MESSAGE] 
```


#### Command options

<dl> 
<dt>--model-id (string)</dt>
<dd>Model identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--commit-message (string)</dt>
<dd>An optional commit message for the revision.</dd>
</dl>

<a id='153'></a>
## ml model list-revisions

Retrieve the model revisions.

```sh
cpdctl ml model list-revisions --model-id MODEL-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--start START] [--limit LIMIT] 
```


#### Command options

<dl> 
<dt>--model-id (string)</dt>
<dd>Model identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--start (string)</dt>
<dd>Token required for token-based pagination. This token cannot be determined by end user. It is generated by the service and it is set in the href available in the `next` field.</dd>
<dt>--limit (int64)</dt>
<dd>How many resources should be returned. By default limit is 100. Max limit allowed is 200.</dd>
<dd>The maximum value is `200`. The minimum value is `1`.</dd>
</dl>

<a id='154'></a>
## ml model list-attachments

Retrieve the content metadata list for the specified model attachments. This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml model list-attachments --model-id MODEL-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--rev REV] [--name NAME] [--content-format CONTENT-FORMAT] 
```


#### Command options

<dl> 
<dt>--model-id (string)</dt>
<dd>Model identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--rev (string)</dt>
<dd>The revision number of the resource.</dd>
<dt>--name (string)</dt>
<dd>List only attachments with the given name.</dd>
<dt>--content-format (string)</dt>
<dd>This is the format of the content. Any value can be used for the format and is there to be able to easily find content by format.</dd>
</dl>

<a id='155'></a>
## ml model upload-content

Upload the content for the specified model.

```sh
cpdctl ml model upload-content --model-id MODEL-ID --content-format CONTENT-FORMAT [--upload-content UPLOAD-CONTENT] [--body BODY] [--content-type CONTENT-TYPE] [--space-id SPACE-ID] [--project-id PROJECT-ID] [--pipeline-node-id PIPELINE-NODE-ID] [--name NAME] 
```


#### Command options

<dl> 
<dt>--model-id (string)</dt>
<dd>Model identifier. Required.</dd>
<dt>--content-format (string)</dt>
<dd>This is the format of the content. Any value can be used for the format and is there to be able to easily find content by format. Required.</dd>
<dt>--upload-content (generic map)</dt>
<dd>models file.</dd>
<dt>--body (io.ReadCloser)</dt>
<dd>models file.</dd>
<dt>--content-type (string)</dt>
<dd>The type of the input. A character encoding can be specified by including a `charset` parameter. For example, 'text/plain;charset=utf-8'.</dd>
<dd>Allowable values are: application/json, application/zip, text/plain, application/xml</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--pipeline-node-id (string)</dt>
<dd>Returns only resources that match this `pipeline_node_id`, this is only relevant if `content_format` is `pipeline-node`.</dd>
<dt>--name (string)</dt>
<dd>Provide the name of the attachment.</dd>
</dl>

<a id='156'></a>
## ml model download-content

Download the model content.

```sh
cpdctl ml model download-content --model-id MODEL-ID --attachment-id ATTACHMENT-ID [--accept ACCEPT] [--space-id SPACE-ID] [--project-id PROJECT-ID] [--rev REV] 
```


#### Command options

<dl> 
<dt>--model-id (string)</dt>
<dd>Model identifier. Required.</dd>
<dt>--attachment-id (string)</dt>
<dd>Identifier for the attachment for resources that support separate content. Required.</dd>
<dt>--accept (string)</dt>
<dd>The type of the response: application/zip, application/gzip, application/json, text/plain, or application/xml. A character encoding can be specified by including a `charset` parameter. For example, 'text/plain;charset=utf-8'.</dd>
<dd>Allowable values are: application/zip, application/gzip, application/json, text/plain, application/xml</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--rev (string)</dt>
<dd>The revision number of the resource.</dd>
</dl>

<a id='157'></a>
## ml model delete-content

Delete the content for the specified model. This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml model delete-content --model-id MODEL-ID --attachment-id ATTACHMENT-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--model-id (string)</dt>
<dd>Model identifier. Required.</dd>
<dt>--attachment-id (string)</dt>
<dd>Identifier for the attachment for resources that support separate content. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
</dl>

<a id='158'></a>
## ml model filtered-download

Download the model content identified by the provided criteria. If more than one attachment is found for the given filter then a
`400` error is returned. If there are no attachments that match the filter then a `404` error is returned. If there are no filters then, if there is a single attachment, the attachment content will be returned otherwise a `400` or `404` error will be returned as described above. This method is just a shortcut for getting the attachment metadata and then downloading by attachment id. This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml model filtered-download --model-id MODEL-ID [--accept ACCEPT] [--space-id SPACE-ID] [--project-id PROJECT-ID] [--rev REV] [--pipeline-node-id PIPELINE-NODE-ID] [--name NAME] [--content-format CONTENT-FORMAT] 
```


#### Command options

<dl> 
<dt>--model-id (string)</dt>
<dd>Model identifier. Required.</dd>
<dt>--accept (string)</dt>
<dd>The type of the response: application/zip, application/gzip, application/json, text/plain, or application/xml. A character encoding can be specified by including a `charset` parameter. For example, 'text/plain;charset=utf-8'.</dd>
<dd>Allowable values are: application/zip, application/gzip, application/json, text/plain, application/xml</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--rev (string)</dt>
<dd>The revision number of the resource.</dd>
<dt>--pipeline-node-id (string)</dt>
<dd>Returns only resources that match this `pipeline_node_id`, this is only relevant if `content_format` is `pipeline-node`.</dd>
<dt>--name (string)</dt>
<dd>Match an attachment with this name.</dd>
<dt>--content-format (string)</dt>
<dd>This is the format of the content. Any value can be used for the format and is there to be able to easily find content by format.</dd>
</dl>

<a id='159'></a>
## ml model wait
Wait until the model upload becomes completed or failed.

```sh
  cpdctl ml model wait --model-id MODEL_ID [--space-id SPACE_ID] [--project-id PROJECT_ID]
```
#### Command options

<dl>
<dt>--cpd-scope string  </dt><dd>CPD space or project scope, e.g. 'cpd://default-context/spaces/7bccdda4-9752-4f37-868e-891de6c48135'</dd>
<dt>--model-id string   </dt><dd>The model ID.</dd>
<dt>--project-id string </dt><dd>The ID of the project to use.</dd>
<dt>--space-id string   </dt><dd>The ID of the space to use.</dd>
</dl>

<a id='160'></a>
## ml model-definition create

Create a new model definition with the given payload. A model definition represents the code that is used to train one or more models. This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml model-definition create --name NAME --version VERSION --platform PLATFORM [--project-id PROJECT-ID] [--space-id SPACE-ID] [--description DESCRIPTION] [--tags TAGS] [--command COMMAND] [--custom CUSTOM] 
```


#### Command options

<dl> 
<dt>--name (string)</dt>
<dd>The name of the resource. Either `space_id` or `project_id` has to be provided and is mandatory. Required.</dd>
<dt>--version (string)</dt>
<dd>The package version. Required.</dd>
<dt>--platform (<a href="#cli-model-definition-entity-request-platform-example-schema-ml">ModelDefinitionEntityRequestPlatform</a>)</dt>
<dd> Required.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--description (string)</dt>
<dd>A description of the resource.</dd>
<dt>--tags ([]string)</dt>
<dd>A list of tags for this resource.</dd>
<dt>--command (string)</dt>
<dd>The command used to run the model.</dd>
<dt>--custom (interface{})</dt>
<dd>User defined properties specified as key-value pairs.</dd>
</dl>

<a id='161'></a>
## ml model-definition list

Retrieve the model definitions for the specified space or project. This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml model-definition list [--space-id SPACE-ID] [--project-id PROJECT-ID] [--start START] [--limit LIMIT] [--tag-value TAG-VALUE] 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--start (string)</dt>
<dd>Token required for token-based pagination. This token cannot be determined by end user. It is generated by the service and it is set in the href available in the `next` field.</dd>
<dt>--limit (int64)</dt>
<dd>How many resources should be returned. By default limit is 100. Max limit allowed is 200.</dd>
<dd>The maximum value is `200`. The minimum value is `1`.</dd>
<dt>--tag-value (string)</dt>
<dd>Return only the resources with the given tag value.</dd>
</dl>

<a id='162'></a>
## ml model-definition get

Retrieve the model definition with the specified identifier. If `rev` query parameter is provided,
`rev=latest` will fetch the latest revision. A call with `rev={revision_number}` will fetch the given revision_number record. Either `space_id` or `project_id` has to be provided and is mandatory. This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml model-definition get --model-definition-id MODEL-DEFINITION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--rev REV] 
```


#### Command options

<dl> 
<dt>--model-definition-id (string)</dt>
<dd>Model definition identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--rev (string)</dt>
<dd>The revision number of the resource.</dd>
</dl>

<a id='163'></a>
## ml model-definition update

Update the model definition with the provided patch data. The following fields can be patched:
- `/tags`
- `/name`
- `/description`
- `/custom` This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml model-definition update --model-definition-id MODEL-DEFINITION-ID --json-patch JSON-PATCH [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--model-definition-id (string)</dt>
<dd>Model definition identifier. Required.</dd>
<dt>--json-patch (<a href="#cli-json-patch-operation-example-schema-ml">JSONPatchOperation[]</a>)</dt>
<dd>Input For Patch. This is the patch body which corresponds to the JavaScript Object Notation (JSON) Patch standard (RFC 6902).</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
</dl>

<a id='164'></a>
## ml model-definition delete

Delete the model definition with the specified identifier. This will delete all revisions of this model definition as well. For each revision all attachments will also be deleted. This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml model-definition delete --model-definition-id MODEL-DEFINITION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--model-definition-id (string)</dt>
<dd>Model definition identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
</dl>

<a id='165'></a>
## ml model-definition create-revision

Create a new model definition revision. The current metadata and content for model_definition_id will be taken and a new revision created. Either `space_id` or `project_id` has to be provided and is mandatory. This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml model-definition create-revision --model-definition-id MODEL-DEFINITION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--commit-message COMMIT-MESSAGE] 
```


#### Command options

<dl> 
<dt>--model-definition-id (string)</dt>
<dd>Model definition identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--commit-message (string)</dt>
<dd>An optional commit message for the revision.</dd>
</dl>

<a id='166'></a>
## ml model-definition list-revisions

Retrieve the model definition revisions. This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml model-definition list-revisions --model-definition-id MODEL-DEFINITION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--start START] [--limit LIMIT] 
```


#### Command options

<dl> 
<dt>--model-definition-id (string)</dt>
<dd>Model definition identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--start (string)</dt>
<dd>Token required for token-based pagination. This token cannot be determined by end user. It is generated by the service and it is set in the href available in the `next` field.</dd>
<dt>--limit (int64)</dt>
<dd>How many resources should be returned. By default limit is 100. Max limit allowed is 200.</dd>
<dd>The maximum value is `200`. The minimum value is `1`.</dd>
</dl>

<a id='167'></a>
## ml model-definition upload-model

Upload the model definition model. Model definitions for Deep Learning accept a zip file that contains one or more     python files organized in any directory structure. This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml model-definition upload-model --model-definition-id MODEL-DEFINITION-ID --upload-model UPLOAD-MODEL [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--model-definition-id (string)</dt>
<dd>Model definition identifier. Required.</dd>
<dt>--upload-model (io.ReadCloser)</dt>
<dd>A gzip file containing code files. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
</dl>

<a id='168'></a>
## ml model-definition download-model

Download the model definition model. It is possible to get the `model` for a given revision of the `model definition`. Model definitions for Deep Learning accept a zip file that contains one or more     python files organized in any directory structure. This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml model-definition download-model --model-definition-id MODEL-DEFINITION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--rev REV] 
```


#### Command options

<dl> 
<dt>--model-definition-id (string)</dt>
<dd>Model definition identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--rev (string)</dt>
<dd>The revision number of the resource.</dd>
</dl>

<a id='169'></a>
## ml pipeline create

Create a new pipeline with the given payload. A pipeline represents a hybrid-pipeline, a SparkML pipeline, or an sklearn pipeline represented as a JSON document that is used to train one or more models.

```sh
cpdctl ml pipeline create --name NAME [--project-id PROJECT-ID] [--space-id SPACE-ID] [--description DESCRIPTION] [--tags TAGS] [--document DOCUMENT] [--custom CUSTOM] 
```


#### Command options

<dl> 
<dt>--name (string)</dt>
<dd>The name of the resource. Either `space_id` or `project_id` has to be provided and is mandatory. Required.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--description (string)</dt>
<dd>A description of the resource.</dd>
<dt>--tags ([]string)</dt>
<dd>A list of tags for this resource.</dd>
<dt>--document (interface{})</dt>
<dd>Refer to the schema defined at
[pipeline-flow-v2-schema](https://api.dataplatform.cloud.ibm.com/schemas/common-pipeline/pipeline-flow/pipeline-flow-v2-schema.json).</dd>
<dt>--custom (interface{})</dt>
<dd>User defined properties specified as key-value pairs.</dd>
</dl>

<a id='170'></a>
## ml pipeline list

Retrieve the pipelines for the specified space or project.

```sh
cpdctl ml pipeline list [--space-id SPACE-ID] [--project-id PROJECT-ID] [--start START] [--limit LIMIT] [--tag-value TAG-VALUE] 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--start (string)</dt>
<dd>Token required for token-based pagination. This token cannot be determined by end user. It is generated by the service and it is set in the href available in the `next` field.</dd>
<dt>--limit (int64)</dt>
<dd>How many resources should be returned. By default limit is 100. Max limit allowed is 200.</dd>
<dd>The maximum value is `200`. The minimum value is `1`.</dd>
<dt>--tag-value (string)</dt>
<dd>Return only the resources with the given tag value.</dd>
</dl>

<a id='171'></a>
## ml pipeline get

Retrieve the pipeline with the specified identifier. If `rev` query parameter is provided,
`rev=latest` will fetch the latest revision. A call with `rev={revision_number}` will fetch the given revision_number record. Either `space_id` or `project_id` has to be provided and is mandatory.

```sh
cpdctl ml pipeline get --pipeline-id PIPELINE-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--rev REV] 
```


#### Command options

<dl> 
<dt>--pipeline-id (string)</dt>
<dd>Pipeline identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--rev (string)</dt>
<dd>The revision number of the resource.</dd>
</dl>

<a id='172'></a>
## ml pipeline update

Update the pipeline with the provided patch data. The following fields can be patched:
- `/tags`
- `/name`
- `/description`
- `/custom`.

```sh
cpdctl ml pipeline update --pipeline-id PIPELINE-ID --json-patch JSON-PATCH [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--pipeline-id (string)</dt>
<dd>Pipeline identifier. Required.</dd>
<dt>--json-patch (<a href="#cli-json-patch-operation-example-schema-ml">JSONPatchOperation[]</a>)</dt>
<dd>Input For Patch. This is the patch body which corresponds to the JavaScript Object Notation (JSON) Patch standard (RFC 6902).</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
</dl>

<a id='173'></a>
## ml pipeline delete

Delete the pipeline with the specified identifier. This will delete all revisions of this pipeline as well. For each revision all attachments will also be deleted.

```sh
cpdctl ml pipeline delete --pipeline-id PIPELINE-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--pipeline-id (string)</dt>
<dd>Pipeline identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
</dl>

<a id='174'></a>
## ml pipeline create-revision

Create a new pipeline revision. The current metadata and content for pipeline_id will be taken and a new revision created. Either `space_id` or `project_id` has to be provided and is mandatory.

```sh
cpdctl ml pipeline create-revision --pipeline-id PIPELINE-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--commit-message COMMIT-MESSAGE] 
```


#### Command options

<dl> 
<dt>--pipeline-id (string)</dt>
<dd>Pipeline identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--commit-message (string)</dt>
<dd>An optional commit message for the revision.</dd>
</dl>

<a id='175'></a>
## ml pipeline list-revisions

Retrieve the pipeline revisions.

```sh
cpdctl ml pipeline list-revisions --pipeline-id PIPELINE-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--start START] [--limit LIMIT] 
```


#### Command options

<dl> 
<dt>--pipeline-id (string)</dt>
<dd>Pipeline identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--start (string)</dt>
<dd>Token required for token-based pagination. This token cannot be determined by end user. It is generated by the service and it is set in the href available in the `next` field.</dd>
<dt>--limit (int64)</dt>
<dd>How many resources should be returned. By default limit is 100. Max limit allowed is 200.</dd>
<dd>The maximum value is `200`. The minimum value is `1`.</dd>
</dl>

<a id='176'></a>
## ml training create

Create a new WML training.

```sh
cpdctl ml training create [--experiment EXPERIMENT] [--pipeline PIPELINE] [--model-definition MODEL-DEFINITION] [--federated-learning FEDERATED-LEARNING] [--training-definition TRAINING-DEFINITION] [--training-data-references TRAINING-DATA-REFERENCES] [--results-reference RESULTS-REFERENCE] [--tags TAGS] [--name NAME] [--description DESCRIPTION] [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--experiment (<a href="#cli-rel-example-schema-ml">Rel</a>)</dt>
<dd>A reference to a resource.</dd>
<dt>--pipeline (<a href="#cli-pipeline-rel-example-schema-ml">PipelineRel</a>)</dt>
<dd>A pipeline.
The `hardware_spec` is a reference to the hardware specification.
The `hybrid_pipeline_hardware_specs` are used only when training a hybrid pipeline in order to
specify compute requirement for each pipeline node.</dd>
<dt>--model-definition (<a href="#cli-model-definition-rel-example-schema-ml">ModelDefinitionRel</a>)</dt>
<dd>A model.
The `software_spec` is a reference to a software specification.
The `hardware_spec` is a reference to a hardware specification.</dd>
<dt>--federated-learning (<a href="#cli-federated-learning-example-schema-ml">FederatedLearning</a>)</dt>
<dd>Federated Learning is a Technical Preview.</dd>
<dt>--training-definition (<a href="#cli-training-definition-rel-example-schema-ml">TrainingDefinitionRel</a>)</dt>
<dd>A training definition.</dd>
<dt>--training-data-references (<a href="#cli-data-connection-reference-example-schema-ml">DataConnectionReference[]</a>)</dt>
<dd>Training datasets.</dd>
<dt>--results-reference (<a href="#cli-object-location-example-schema-ml">ObjectLocation</a>)</dt>
<dd>A reference to data.</dd>
<dt>--tags ([]string)</dt>
<dd>A list of tags for this resource.</dd>
<dt>--name (string)</dt>
<dd>The name of the training.</dd>
<dt>--description (string)</dt>
<dd>A description of the training.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
</dl>

<a id='177'></a>
## ml training list

Retrieve the list of trainings for the specified space or project.

```sh
cpdctl ml training list [--start START] [--limit LIMIT] [--total-count TOTAL-COUNT] [--tag-value TAG-VALUE] [--type TYPE] [--state STATE] [--space-id SPACE-ID] [--project-id PROJECT-ID] [--parent-id PARENT-ID] 
```


#### Command options

<dl> 
<dt>--start (string)</dt>
<dd>Token required for token-based pagination. This token cannot be determined by end user. It is generated by the service and it is set in the href available in the `next` field.</dd>
<dt>--limit (int64)</dt>
<dd>How many resources should be returned. Default value is 100. Max value is 200.</dd>
<dt>--total-count (bool)</dt>
<dd>Compute the total count. May have performance impact.</dd>
<dt>--tag-value (string)</dt>
<dd>Return only the resources with the given tag value.</dd>
<dt>--type (string)</dt>
<dd>Filter based on 'pipeline' or 'experiment' trainings. Example: `type=pipeline`. If not provided, returns all the trainings.</dd>
<dt>--state (string)</dt>
<dd>Filter based on on the training job state: queued, running, completed, failed etc.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--parent-id (string)</dt>
<dd>Return the training jobs that are sub-jobs of this parent_id job. The parent_id can be the experiment job ID.</dd>
</dl>

<a id='178'></a>
## ml training get

Retrieve the training with the specified identifier. This call supports Web-Socket upgrade. However in order to preserve bandwidth, web-socket messages are not context complete. Meaning that a single web-socket message only reflects a message or metric happening in the context of a training job or sub-job (in case of experiment trainings or HPO/AutoML trainings). Hence the metadata property of a web-socket message contains a parent with the href information of the parent job that triggered this particular job. Also the metrics will be provided as they arrive from the backend runtime, and not as a cumulative list. In order to get the full view of the running training job the caller should do a regular GET call.

```sh
cpdctl ml training get --training-id TRAINING-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--training-id (string)</dt>
<dd>The training identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
</dl>

<a id='179'></a>
## ml training delete

Cancel the specified training and remove it.

```sh
cpdctl ml training delete --training-id TRAINING-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--hard-delete HARD-DELETE] 
```


#### Command options

<dl> 
<dt>--training-id (string)</dt>
<dd>The training identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--hard-delete (bool)</dt>
<dd>Set to true in order to also delete the job metadata information.</dd>
</dl>

<a id='180'></a>
## ml training wait
Wait until the training becomes completed, failed, or canceled.

```sh
  cpdctl ml training wait --training-id TRAINING_ID [--space-id SPACE-ID] [--project-id PROJECT-ID]
```
#### Command options

<dl>
<dt>--cpd-scope string   </dt><dd>CPD space or project scope, e.g. 'cpd://default-context/spaces/7bccdda4-9752-4f37-868e-891de6c48135'</dd>
<dt>--project-id string  </dt><dd>The ID of the project to use.</dd>
<dt>--space-id string    </dt><dd>The ID of the space to use.</dd>
<dt>--training-id string </dt><dd>The training ID.</dd>
</dl>

<a id='181'></a>
## ml training-definition create

Create a new training definition with the given payload. A training definition represents the training meta-data necessary to start a training job. This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml training-definition create --name NAME [--project-id PROJECT-ID] [--space-id SPACE-ID] [--description DESCRIPTION] [--tags TAGS] [--experiment EXPERIMENT] [--pipeline PIPELINE] [--model-definition MODEL-DEFINITION] [--federated-learning FEDERATED-LEARNING] [--training-definition TRAINING-DEFINITION] [--training-data-references TRAINING-DATA-REFERENCES] [--results-reference RESULTS-REFERENCE] 
```


#### Command options

<dl> 
<dt>--name (string)</dt>
<dd>The name of the resource. Either `space_id` or `project_id` has to be provided and is mandatory. Required.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--description (string)</dt>
<dd>A description of the resource.</dd>
<dt>--tags ([]string)</dt>
<dd>A list of tags for this resource.</dd>
<dt>--experiment (<a href="#cli-rel-example-schema-ml">Rel</a>)</dt>
<dd>A reference to a resource.</dd>
<dt>--pipeline (<a href="#cli-pipeline-rel-example-schema-ml">PipelineRel</a>)</dt>
<dd>A pipeline.
The `hardware_spec` is a reference to the hardware specification.
The `hybrid_pipeline_hardware_specs` are used only when training a hybrid pipeline in order to
specify compute requirement for each pipeline node.</dd>
<dt>--model-definition (<a href="#cli-model-definition-rel-example-schema-ml">ModelDefinitionRel</a>)</dt>
<dd>A model.
The `software_spec` is a reference to a software specification.
The `hardware_spec` is a reference to a hardware specification.</dd>
<dt>--federated-learning (<a href="#cli-federated-learning-example-schema-ml">FederatedLearning</a>)</dt>
<dd>Federated Learning is a Technical Preview.</dd>
<dt>--training-definition (<a href="#cli-training-definition-rel-example-schema-ml">TrainingDefinitionRel</a>)</dt>
<dd>A training definition.</dd>
<dt>--training-data-references (<a href="#cli-data-connection-reference-example-schema-ml">DataConnectionReference[]</a>)</dt>
<dd>Training datasets.</dd>
<dt>--results-reference (<a href="#cli-object-location-example-schema-ml">ObjectLocation</a>)</dt>
<dd>A reference to data.</dd>
</dl>

<a id='182'></a>
## ml training-definition list

Retrieve the training definitions for the specified space or project. This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml training-definition list [--space-id SPACE-ID] [--project-id PROJECT-ID] [--start START] [--limit LIMIT] [--tag-value TAG-VALUE] 
```


#### Command options

<dl> 
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--start (string)</dt>
<dd>Token required for token-based pagination. This token cannot be determined by end user. It is generated by the service and it is set in the href available in the `next` field.</dd>
<dt>--limit (int64)</dt>
<dd>How many resources should be returned. By default limit is 100. Max limit allowed is 200.</dd>
<dd>The maximum value is `200`. The minimum value is `1`.</dd>
<dt>--tag-value (string)</dt>
<dd>Return only the resources with the given tag value.</dd>
</dl>

<a id='183'></a>
## ml training-definition get

Retrieve the training definition with the specified identifier. If `rev` query parameter is provided,
`rev=latest` will fetch the latest revision. A call with `rev={revision_number}` will fetch the given revision_number record. Either `space_id` or `project_id` has to be provided and is mandatory. This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml training-definition get --training-definition-id TRAINING-DEFINITION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--rev REV] 
```


#### Command options

<dl> 
<dt>--training-definition-id (string)</dt>
<dd>Training definition identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--rev (string)</dt>
<dd>The revision number of the resource.</dd>
</dl>

<a id='184'></a>
## ml training-definition update

Update the training definition with the provided patch data. The following fields can be patched:
- `/tags`
- `/name`
- `/description`
- `/custom`
- `/federated_learning` This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml training-definition update --training-definition-id TRAINING-DEFINITION-ID --json-patch JSON-PATCH [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--training-definition-id (string)</dt>
<dd>Training definition identifier. Required.</dd>
<dt>--json-patch (<a href="#cli-json-patch-operation-example-schema-ml">JSONPatchOperation[]</a>)</dt>
<dd>Input For Patch. This is the patch body which corresponds to the JavaScript Object Notation (JSON) Patch standard (RFC 6902).</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
</dl>

<a id='185'></a>
## ml training-definition delete

Delete the training definition with the specified identifier. This will delete all revisions of this training definition as well. For each revision all attachments will also be deleted. This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml training-definition delete --training-definition-id TRAINING-DEFINITION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] 
```


#### Command options

<dl> 
<dt>--training-definition-id (string)</dt>
<dd>Training definition identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
</dl>

<a id='186'></a>
## ml training-definition create-revision

Create a new training definition revision. The current metadata and content for training_definition_id will be taken and a new revision created. Either `space_id` or `project_id` has to be provided and is mandatory. This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml training-definition create-revision --training-definition-id TRAINING-DEFINITION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--commit-message COMMIT-MESSAGE] 
```


#### Command options

<dl> 
<dt>--training-definition-id (string)</dt>
<dd>Training definition identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` has to be given.</dd>
<dt>--commit-message (string)</dt>
<dd>An optional commit message for the revision.</dd>
</dl>

<a id='187'></a>
## ml training-definition list-revisions

Retrieve the training definition revisions. This command is supported starting with release 3.5 of Cloud Pak for Data.

```sh
cpdctl ml training-definition list-revisions --training-definition-id TRAINING-DEFINITION-ID [--space-id SPACE-ID] [--project-id PROJECT-ID] [--start START] [--limit LIMIT] 
```


#### Command options

<dl> 
<dt>--training-definition-id (string)</dt>
<dd>Training definition identifier. Required.</dd>
<dt>--space-id (string)</dt>
<dd>The space that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--project-id (string)</dt>
<dd>The project that contains the resource. Either `space_id` or `project_id` query parameter has to be given.</dd>
<dt>--start (string)</dt>
<dd>Token required for token-based pagination. This token cannot be determined by end user. It is generated by the service and it is set in the href available in the `next` field.</dd>
<dt>--limit (int64)</dt>
<dd>How many resources should be returned. By default limit is 100. Max limit allowed is 200.</dd>
<dd>The maximum value is `200`. The minimum value is `1`.</dd>
</dl>

<a id='188'></a>
## find 
Find a resource with CPD Path

```sh
  cpdctl find --cpd-path PATH
```
#### Command options

<dl>
<dt>--asset-type string    </dt><dd>Asset type used when resolving paths with an asset ID only</dd>
<dt>--ignore               </dt><dd>Ignore errors and return empty result (default: false)</dd>
<dt>--output json          </dt><dd>Choose an output format - can be json, `yaml`, or `table`. (default "table")</dd>
<dt>--resource-type string </dt><dd>Resource type used when resolving paths with a resource ID only</dd>
<dt>--result               </dt><dd>Include result metadata in output (default: false)</dd>
</dl>

<a id='189'></a>
## config user list
List users

```sh
  cpdctl config user list
```

<a id='190'></a>
## config user get
```sh
  cpdctl config user get name
```

<a id='191'></a>
## config user set
```sh
  cpdctl config user set name
```
#### Command options

<dl>
<dt>--apikey string     </dt><dd>Set user apikey</dd>
<dt>--password string   </dt><dd>Set user password</dd>
<dt>--token-file string </dt><dd>Set location of a file that contains user token</dd>
<dt>--username string   </dt><dd>Set user name</dd>
</dl>

<a id='192'></a>
## config user unset
```sh
  cpdctl config user unset name
```

<a id='193'></a>
## config profile list
List profiles

```sh
  cpdctl config profile list
```

<a id='194'></a>
## config profile get
```sh
  cpdctl config profile get name
```

<a id='195'></a>
## config profile set
```sh
  cpdctl config profile set name
```
#### Command options

<dl>
<dt>--url string  </dt><dd>Set url for the profile</dd>
<dt>--user string </dt><dd>Set user for the profile</dd>
</dl>

<a id='196'></a>
## config profile unset
```sh
  cpdctl config profile unset name
```

<a id='197'></a>
## config service list
List services

```sh
  cpdctl config service list
```

<a id='198'></a>
## config service export
Export Configuration

```sh
  cpdctl config service export service-name
```

<a id='199'></a>
## config service get
```sh
  cpdctl config service get name
```

<a id='200'></a>
## config service set
```sh
  cpdctl config service set name
```
#### Command options

<dl>
<dt>--instance string </dt><dd>Set instance for the service</dd>
<dt>--profile string  </dt><dd>Set profile for the service</dd>
<dt>--type string     </dt><dd>Set type for the service</dd>
<dt>--url string      </dt><dd>Set url for the service</dd>
<dt>--user string     </dt><dd>Set user for the service</dd>
</dl>

<a id='201'></a>
## config service unset
```sh
  cpdctl config service unset name
```

<a id='202'></a>
## config context list
List contexts

```sh
  cpdctl config context list
```

<a id='203'></a>
## config context export
Export Configuration

```sh
  cpdctl config context export context-name
```

<a id='204'></a>
## config context get
```sh
  cpdctl config context get name
```

<a id='205'></a>
## config context set
```sh
  cpdctl config context set name
```
#### Command options

<dl>
<dt>--profile string                 </dt><dd>Set default profile for the context</dd>
<dt>--user string                    </dt><dd>Set default user for the context</dd>
<dt>--watson-machine-learning string </dt><dd>Set Watson Machine Learning service instance</dd>
<dt>--watson-open-scale string       </dt><dd>Set Watson OpenScale service instance</dd>
<dt>--watson-studio string           </dt><dd>Set Watson Studio service instance</dd>
</dl>

<a id='206'></a>
## config context unset
```sh
  cpdctl config context unset name
```

<a id='207'></a>
## config context current
Display the current context

```sh
  cpdctl config context current
```

<a id='208'></a>
## config context use
Sets the current context

```sh
  cpdctl config context use context-name
```

<a id='209'></a>
## version 
Display the tool version

```sh
  cpdctl version
```

# Schema examples
### AssetMetadata
<a id="cli-asset-metadata-example-schema-asset"></a>

The following example shows the format of the AssetMetadata object.

```json

{
  "asset_attributes" : [ "testString" ],
  "asset_category" : "USER",
  "asset_id" : "testString",
  "asset_state" : "available",
  "asset_type" : "data-asset",
  "child_source_systems" : [ {
    "asset_identifier" : "String",
    "created" : 1531854592,
    "creation_timestamp" : "2018-03-21T12:47:43",
    "last_modification_timestamp" : "2018-03-21T12:47:43",
    "last_modified" : 1531854592,
    "source" : "DASHDB",
    "source_system_id" : "String"
  } ],
  "created_at" : "2019-01-01T12:00:00.000Z",
  "description" : "A description more fully describes an asset.  It can also be much longer than the asset name.",
  "name" : "Choose Any Name for your Asset",
  "origin_country" : "us",
  "owner_id" : "testString",
  "resource_key" : "testString",
  "rov" : {
    "mode" : 38
  },
  "size" : 38,
  "source_system" : {
    "asset_identifier" : "String",
    "created" : 1531854592,
    "creation_timestamp" : "2018-03-21T12:47:43",
    "last_modification_timestamp" : "2018-03-21T12:47:43",
    "last_modified" : 1531854592,
    "source" : "DASHDB",
    "source_system_id" : "String"
  },
  "tags" : [ "testString" ]
}
```
### AssetAttachment
<a id="cli-asset-attachment-example-schema-asset"></a>

The following example shows the format of the AssetAttachment[] object.

```json

[ {
  "asset_type" : "testString",
  "connection_id" : "testString",
  "connection_path" : "testString",
  "data_partitions" : 38,
  "description" : "testString",
  "is_partitioned" : true,
  "mime" : "testString",
  "name" : "testString",
  "object_key" : "testString",
  "object_key_is_read_only" : true,
  "private_url" : true,
  "test_doc" : 26,
  "url" : "testString",
  "user_data" : {
    "anyKey" : "anyValue"
  },
  "id" : "testString"
} ]
```
### JSONPatchOperation
<a id="cli-json-patch-operation-example-schema-asset"></a>

The following example shows the format of the JSONPatchOperation[] object.

```json

[ {
  "op" : "add",
  "path" : "testString",
  "from" : "testString",
  "value" : "testString"
} ]
```
### AssetTypeField
<a id="cli-asset-type-field-example-schema-asset"></a>

The following example shows the format of the AssetTypeField[] object.

```json

[ {
  "facet" : false,
  "is_array" : false,
  "is_searchable_across_types" : false,
  "key" : "host",
  "search_path" : "asset.columns[].*.name",
  "type" : "string"
} ]
```
### ExternalAssetPreview
<a id="cli-external-asset-preview-example-schema-asset"></a>

The following example shows the format of the ExternalAssetPreview object.

```json

{
  "base_client_url" : "https://ibm.com",
  "url_parameters_fixed" : "allow_login_screen=true",
  "url_parameters_from_asset_attributes" : [ "testString" ],
  "url_path_from_asset_attributes" : "id"
}
```
### map
<a id="cli-map-string-asset-type-property-example-schema-asset"></a>

The following example shows the format of the map[string]AssetTypeProperty object.

```json

{ }
```
### AssetTypeRelationship
<a id="cli-asset-type-relationship-example-schema-asset"></a>

The following example shows the format of the AssetTypeRelationship[] object.

```json

[ {
  "key" : "connection_id",
  "on_clone_target" : "CASCADE",
  "on_delete" : "CASCADE",
  "on_delete_target" : "CASCADE",
  "target_asset_type" : "connection"
} ]
```
### ExportAssets
<a id="cli-export-assets-example-schema-asset"></a>

The following example shows the format of the ExportAssets object.

```json

{
  "all_assets" : true,
  "asset_ids" : [ "testString" ],
  "asset_types" : [ "data_asset" ]
}
```
### TransactionalProjectStorageObject
<a id="cli-transactional-project-storage-object-example-schema-project"></a>

The following example shows the format of the TransactionalProjectStorageObject object.

```json

{
  "delegated" : true,
  "guid" : "d0e410a0-b358-42fc-b402-dba83316413a",
  "resource_crn" : "crn:v1:staging:public:cloud-object-storage:global:a/a7026b374f39f570d20984c1ac6ecf63:5778e94f-c8c7-46a8-9878-d5eeadb51161::",
  "type" : "bmcos_object_storage"
}
```
### TransactionalProjectComputeObjectCloud
<a id="cli-transactional-project-compute-object-cloud-example-schema-project"></a>

The following example shows the format of the TransactionalProjectComputeObjectCloud[] object.

```json

[ {
  "crn" : "crn:v1:staging:public:watson-vision-combined:us-south:a/1438bf1daef49e20401d0179818ebef5:6874282b-42d6-40fa-869b-95a3c0f04125::",
  "guid" : "eddc2f0c-4401-49d1-b632-dee2ec33dcc0",
  "label" : "watson_vision_combined",
  "name" : "Apache Spark",
  "type" : "spark"
} ]
```
### ProjectCatalog
<a id="cli-project-catalog-example-schema-project"></a>

The following example shows the format of the ProjectCatalog object.

```json

{
  "guid" : "fcce617b-1fc9-4965-8820-272864f58399",
  "public" : true
}
```
### ProjectCompute
<a id="cli-project-compute-example-schema-project"></a>

The following example shows the format of the ProjectCompute[] object.

```json

[ {
  "credentials" : {
    "anyKey" : "anyValue"
  },
  "crn" : "crn:v1:staging:public:watson-vision-combined:us-south:a/1438bf1daef49e20401d0179818ebef5:6874282b-42d6-40fa-869b-95a3c0f04125::",
  "guid" : "eddc2f0c-4401-49d1-b632-dee2ec33dcc0",
  "label" : "service_label",
  "name" : "Analytics Engine",
  "type" : "analytics_engine"
} ]
```
### UpdateMemberBody
<a id="cli-update-member-body-example-schema-project"></a>

The following example shows the format of the UpdateMemberBody[] object.

```json

[ {
  "id" : "IBMid-55000353XF",
  "role" : "admin",
  "state" : "ACTIVE",
  "user_name" : "zapp.brannigan@ibm.com"
} ]
```
### ProjectMember
<a id="cli-project-member-example-schema-project"></a>

The following example shows the format of the ProjectMember[] object.

```json

[ {
  "id" : "IBMid-55000353XF",
  "role" : "admin",
  "state" : "ACTIVE",
  "type" : "user",
  "user_name" : "zapp.brannigan@ibm.com"
} ]
```
### ComputeRequest
<a id="cli-compute-request-example-schema-space"></a>

The following example shows the format of the ComputeRequest[] object.

```json

[ {
  "crn" : "testString",
  "name" : "testString"
} ]
```
### StorageRequest
<a id="cli-storage-request-example-schema-space"></a>

The following example shows the format of the StorageRequest object.

```json

{
  "delegated" : true,
  "resource_crn" : "testString"
}
```
### JSONPatchOperation
<a id="cli-json-patch-operation-example-schema-space"></a>

The following example shows the format of the JSONPatchOperation[] object.

```json

[ {
  "op" : "add",
  "path" : "testString",
  "from" : "testString",
  "value" : "testString"
} ]
```
### MemberResource
<a id="cli-member-resource-example-schema-space"></a>

The following example shows the format of the MemberResource[] object.

```json

[ {
  "id" : "testString",
  "role" : "viewer",
  "state" : "active",
  "type" : "user"
} ]
```
### ConnectionInteractionProperties
<a id="cli-connection-interaction-properties-example-schema-connection"></a>

The following example shows the format of the ConnectionInteractionProperties object.

```json

{
  "source" : [ {
    "default_value" : "testString",
    "description" : "testString",
    "group" : "testString",
    "hidden" : true,
    "label" : "testString",
    "masked" : true,
    "multiline" : true,
    "name" : "testString",
    "placeholder" : "testString",
    "readonly" : true,
    "required" : true,
    "supported_environments" : [ "testString" ],
    "supported_products" : [ "testString" ],
    "tags" : [ "testString" ],
    "type" : "boolean",
    "user_defined" : true,
    "values" : [ {
      "label" : "testString",
      "value" : "testString"
    } ]
  } ],
  "target" : [ {
    "default_value" : "testString",
    "description" : "testString",
    "group" : "testString",
    "hidden" : true,
    "label" : "testString",
    "masked" : true,
    "multiline" : true,
    "name" : "testString",
    "placeholder" : "testString",
    "readonly" : true,
    "required" : true,
    "supported_environments" : [ "testString" ],
    "supported_products" : [ "testString" ],
    "tags" : [ "testString" ],
    "type" : "boolean",
    "user_defined" : true,
    "values" : [ {
      "label" : "testString",
      "value" : "testString"
    } ]
  } ]
}
```
### ConnectionRov
<a id="cli-connection-rov-example-schema-connection"></a>

The following example shows the format of the ConnectionRov object.

```json

{
  "mode" : 38
}
```
### JSONPatchOperation
<a id="cli-json-patch-operation-example-schema-connection"></a>

The following example shows the format of the JSONPatchOperation[] object.

```json

[ {
  "op" : "add",
  "path" : "testString",
  "from" : "testString",
  "value" : "testString"
} ]
```
### ReferencedSpecification
<a id="cli-referenced-specification-example-schema-environment"></a>

The following example shows the format of the ReferencedSpecification object.

```json

{
  "guid" : "b82b95df-fc3e-4273-98f7-473d62a03c2b",
  "type" : "referenced"
}
```
### HardwareSpecificationNodesDefinition
<a id="cli-hardware-specification-nodes-definition-example-schema-environment"></a>

The following example shows the format of the HardwareSpecificationNodesDefinition object.

```json

{
  "cpu" : {
    "model" : "testString",
    "units" : "100m"
  },
  "gpu" : {
    "name" : "v100",
    "num_gpu" : 2
  },
  "mem" : {
    "size" : "4Gi"
  },
  "num_nodes" : 1
}
```
### HardwareSpecificationSparkDefinition
<a id="cli-hardware-specification-spark-definition-example-schema-environment"></a>

The following example shows the format of the HardwareSpecificationSparkDefinition object.

```json

{
  "driver" : {
    "cpu" : {
      "model" : "testString",
      "units" : "100m"
    },
    "mem" : {
      "size" : "4Gi"
    }
  },
  "executor" : {
    "cpu" : {
      "model" : "testString",
      "units" : "100m"
    },
    "mem" : {
      "size" : "4Gi"
    }
  },
  "num_drivers" : 1,
  "num_executors" : 2
}
```
### SoftwareSpecificationEntitySoftwareConfigurationDefinition
<a id="cli-software-specification-entity-software-configuration-definition-example-schema-environment"></a>

The following example shows the format of the SoftwareSpecificationEntitySoftwareConfigurationDefinition object.

```json

{
  "included_packages" : [ {
    "name" : "scikit-learn",
    "version" : "0.20.0"
  } ],
  "platform" : {
    "name" : "python",
    "version" : "3.6"
  }
}
```
### BaseSoftwareSpecificationReference
<a id="cli-base-software-specification-reference-example-schema-environment"></a>

The following example shows the format of the BaseSoftwareSpecificationReference object.

```json

{
  "guid" : "903d3fc4-2e46-4581-a23a-b4484e13519e",
  "href" : "/v2/software_specifications/903d3fc4-2e46-4581-a23a-b4484e13519e"
}
```
### PackageExtensionReference
<a id="cli-package-extension-reference-example-schema-environment"></a>

The following example shows the format of the PackageExtensionReference[] object.

```json

[ {
  "guid" : "b82b95df-fc3e-4273-98f7-473d62a03c2b",
  "href" : "/v2/package_extensions/b82b95df-fc3e-4273-98f7-473d62a03c2b"
} ]
```
### NotebookKernel
<a id="cli-notebook-kernel-example-schema-notebook"></a>

The following example shows the format of the NotebookKernel object.

```json

{
  "display_name" : "Python 3.5 with Spark",
  "language" : "python3",
  "name" : "python3"
}
```
### NotebookOrigin
<a id="cli-notebook-origin-example-schema-notebook"></a>

The following example shows the format of the NotebookOrigin object.

```json

{
  "type" : "blank"
}
```
### NotebookRuntime
<a id="cli-notebook-runtime-example-schema-notebook"></a>

The following example shows the format of the NotebookRuntime object.

```json

{
  "environment" : "conda4x16-d46ca0e27-a646-4de9-a646-9b113c183d4",
  "spark_monitoring_enabled" : true
}
```
### NotebookShares
<a id="cli-notebook-shares-example-schema-notebook"></a>

The following example shows the format of the NotebookShares object.

```json

{
  "gist" : {
    "content_filter" : "none",
    "enabled" : false,
    "html_url" : "http://gist.ibm.com",
    "visibility" : "all"
  },
  "github" : {
    "api_url" : "http://api.github.ibm.com/v2",
    "branch" : "dev",
    "commit_sha" : "4f0c9d366173a0a322b032e01c989831a3287145",
    "content_filter" : "none",
    "content_sha" : "d89e37f1502717207e7f423c65e414e6b4645687",
    "enabled" : false,
    "html_url" : "http://github.ibm.com",
    "path" : "blob/foo",
    "repo_name" : "Data Science Experience",
    "repo_org" : "dsx"
  },
  "public" : {
    "content_filter" : "none",
    "enabled" : false
  }
}
```
### JobPostBodyJob
<a id="cli-job-post-body-job-example-schema-job"></a>

The following example shows the format of the JobPostBodyJob object.

```json

{
  "asset_ref" : "ff1ab70b-0553-409a-93f9-ccc31471c218",
  "asset_ref_type" : "notebook",
  "configuration" : {
    "deployment_job_definition_id" : "ff1ab70b-0553-409a-93f9-ccc31471c218",
    "env_id" : "defaultsparkr1x4-18ce241b-c9e8-43ed-94a1-9f5585764924",
    "env_variables" : [ "testString" ],
    "version" : "d00a9d88-4394-48f8-86db-d9b8360f8a72"
  },
  "description" : "Description.",
  "name" : "Name",
  "schedule" : "0 3 21 13 1 ? 2019",
  "schedule_info" : {
    "endOn" : 1547578689512,
    "repeat" : true,
    "startOn" : 1547578689512
  }
}
```
### JobRunPostBodyJobRun
<a id="cli-job-run-post-body-job-run-example-schema-job"></a>

The following example shows the format of the JobRunPostBodyJobRun object.

```json

{
  "configuration" : {
    "env_variables" : [ "testString" ]
  }
}
```
### Rel
<a id="cli-rel-example-schema-ml"></a>

The following example shows the format of the Rel object.

```json

{
  "id" : "4cedab6d-e8e4-4214-b81a-2ddb122db2ab",
  "rev" : "2"
}
```
### HardwareSpecRel
<a id="cli-hardware-spec-rel-example-schema-ml"></a>

The following example shows the format of the HardwareSpecRel object.

```json

{
  "id" : "4cedab6d-e8e4-4214-b81a-2ddb122db2ab",
  "rev" : "2",
  "name" : "testString",
  "num_nodes" : 2
}
```
### JobEntityResultHybridPipelineHardwareSpecsItem
<a id="cli-job-entity-result-hybrid-pipeline-hardware-specs-item-example-schema-ml"></a>

The following example shows the format of the JobEntityResultHybridPipelineHardwareSpecsItem[] object.

```json

[ {
  "node_runtime_id" : "autoai.kb",
  "hardware_spec" : {
    "id" : "4cedab6d-e8e4-4214-b81a-2ddb122db2ab",
    "rev" : "2",
    "name" : "testString",
    "num_nodes" : 2
  }
} ]
```
### DeploymentEntityRequestOnline
<a id="cli-deployment-entity-request-online-example-schema-ml"></a>

The following example shows the format of the DeploymentEntityRequestOnline object.

```json

{
  "parameters" : {
    "anyKey" : "anyValue"
  }
}
```
### DeploymentEntityRequestBatch
<a id="cli-deployment-entity-request-batch-example-schema-ml"></a>

The following example shows the format of the DeploymentEntityRequestBatch object.

```json

{
  "parameters" : {
    "anyKey" : "anyValue"
  }
}
```
### DeploymentEntityRequestVirtual
<a id="cli-deployment-entity-request-virtual-example-schema-ml"></a>

The following example shows the format of the DeploymentEntityRequestVirtual object.

```json

{
  "export_format" : "coreml",
  "parameters" : {
    "anyKey" : "anyValue"
  },
  "notification_system" : {
    "id" : "testString",
    "type" : "s3",
    "connection" : {
      "anyKey" : "anyValue"
    },
    "location" : {
      "anyKey" : "anyValue"
    }
  }
}
```
### JSONPatchOperation
<a id="cli-json-patch-operation-example-schema-ml"></a>

The following example shows the format of the JSONPatchOperation[] object.

```json

[ {
  "op" : "add",
  "path" : "testString",
  "from" : "testString",
  "value" : "testString"
} ]
```
### InputDataArray
<a id="cli-input-data-array-example-schema-ml"></a>

The following example shows the format of the InputDataArray[] object.

```json

[ {
  "id" : "testString",
  "fields" : [ "testString" ],
  "values" : [ [ {
    "anyKey" : "anyValue"
  } ] ]
} ]
```
### SimpleRel
<a id="cli-simple-rel-example-schema-ml"></a>

The following example shows the format of the SimpleRel object.

```json

{
  "id" : "4cedab6d-e8e4-4214-b81a-2ddb122db2ab"
}
```
### JobEntityRequestHybridPipelineHardwareSpecsItem
<a id="cli-job-entity-request-hybrid-pipeline-hardware-specs-item-example-schema-ml"></a>

The following example shows the format of the JobEntityRequestHybridPipelineHardwareSpecsItem[] object.

```json

[ {
  "node_runtime_id" : "autoai.kb",
  "hardware_spec" : {
    "id" : "4cedab6d-e8e4-4214-b81a-2ddb122db2ab",
    "rev" : "2",
    "name" : "testString",
    "num_nodes" : 2
  }
} ]
```
### JobScoringRequest
<a id="cli-job-scoring-request-example-schema-ml"></a>

The following example shows the format of the JobScoringRequest object.

```json

{
  "input_data" : [ {
    "id" : "testString",
    "type" : "target",
    "fields" : [ "testString" ],
    "values" : [ [ {
      "anyKey" : "anyValue"
    } ] ],
    "targets" : [ [ {
      "anyKey" : "anyValue"
    } ] ]
  } ],
  "input_data_references" : [ {
    "id" : "testString",
    "type" : "s3",
    "connection" : {
      "anyKey" : "anyValue"
    },
    "location" : {
      "anyKey" : "anyValue"
    },
    "schema" : {
      "id" : "t1",
      "name" : "Tasks",
      "fields" : [ {
        "anyKey" : "anyValue"
      } ]
    }
  } ],
  "output_data_reference" : {
    "id" : "testString",
    "type" : "s3",
    "connection" : {
      "anyKey" : "anyValue"
    },
    "location" : {
      "anyKey" : "anyValue"
    },
    "schema" : {
      "id" : "t1",
      "name" : "Tasks",
      "fields" : [ {
        "anyKey" : "anyValue"
      } ]
    }
  },
  "evaluations" : [ {
    "id" : "testString",
    "input_target" : "testString",
    "metrics_names" : [ "testString" ]
  } ],
  "environment_variables" : {
    "anyKey" : "anyValue"
  }
}
```
### JobDecisionOptimizationRequest
<a id="cli-job-decision-optimization-request-example-schema-ml"></a>

The following example shows the format of the JobDecisionOptimizationRequest object.

```json

{
  "solve_parameters" : {
    "anyKey" : "anyValue"
  },
  "input_data" : [ {
    "id" : "testString",
    "fields" : [ "testString" ],
    "values" : [ [ {
      "anyKey" : "anyValue"
    } ] ],
    "content" : "testString"
  } ],
  "input_data_references" : [ {
    "id" : "testString",
    "type" : "s3",
    "connection" : {
      "anyKey" : "anyValue"
    },
    "location" : {
      "anyKey" : "anyValue"
    }
  } ],
  "output_data" : [ {
    "id" : "testString",
    "fields" : [ "testString" ],
    "values" : [ [ {
      "anyKey" : "anyValue"
    } ] ],
    "content" : "testString"
  } ],
  "output_data_references" : [ {
    "id" : "testString",
    "type" : "s3",
    "connection" : {
      "anyKey" : "anyValue"
    },
    "location" : {
      "anyKey" : "anyValue"
    }
  } ]
}
```
### EvaluationDefinition
<a id="cli-evaluation-definition-example-schema-ml"></a>

The following example shows the format of the EvaluationDefinition object.

```json

{
  "method" : "binary",
  "metrics" : [ {
    "name" : "areaUnderROC",
    "maximize" : true
  } ]
}
```
### TrainingReference
<a id="cli-training-reference-example-schema-ml"></a>

The following example shows the format of the TrainingReference[] object.

```json

[ {
  "pipeline" : {
    "id" : "4cedab6d-e8e4-4214-b81a-2ddb122db2ab",
    "rev" : "2",
    "model_type" : "testString",
    "data_bindings" : [ {
      "data_reference_name" : "testString",
      "node_id" : "testString"
    } ],
    "nodes_parameters" : [ {
      "node_id" : "testString",
      "parameters" : {
        "anyKey" : "anyValue"
      }
    } ],
    "hardware_spec" : {
      "id" : "4cedab6d-e8e4-4214-b81a-2ddb122db2ab",
      "rev" : "2",
      "name" : "testString",
      "num_nodes" : 2
    },
    "hybrid_pipeline_hardware_specs" : [ {
      "node_runtime_id" : "autoai.kb",
      "hardware_spec" : {
        "id" : "4cedab6d-e8e4-4214-b81a-2ddb122db2ab",
        "rev" : "2",
        "name" : "testString",
        "num_nodes" : 2
      }
    } ]
  },
  "model_definition" : {
    "id" : "4cedab6d-e8e4-4214-b81a-2ddb122db2ab"
  },
  "hyper_parameters_optimization" : {
    "method" : {
      "name" : "random",
      "parameters" : {
        "anyKey" : "anyValue"
      }
    },
    "hyper_parameters" : [ {
      "name" : "learning_rate",
      "items" : "[0.005,0.1,0.11]"
    } ]
  }
} ]
```
### SoftwareSpecRel
<a id="cli-software-spec-rel-example-schema-ml"></a>

The following example shows the format of the SoftwareSpecRel object.

```json

{
  "id" : "4cedab6d-e8e4-4214-b81a-2ddb122db2ab",
  "rev" : "2",
  "name" : "..."
}
```
### SyncScoringData
<a id="cli-sync-scoring-data-example-schema-ml"></a>

The following example shows the format of the SyncScoringData object.

```json

{
  "input_data" : [ {
    "id" : "testString",
    "fields" : [ "testString" ],
    "values" : [ [ {
      "anyKey" : "anyValue"
    } ] ]
  } ]
}
```
### FunctionEntitySchemas
<a id="cli-function-entity-schemas-example-schema-ml"></a>

The following example shows the format of the FunctionEntitySchemas object.

```json

{
  "input" : [ {
    "id" : "t1",
    "name" : "Tasks",
    "fields" : [ {
      "anyKey" : "anyValue"
    } ]
  } ],
  "output" : [ {
    "id" : "t1",
    "name" : "Tasks",
    "fields" : [ {
      "anyKey" : "anyValue"
    } ]
  } ]
}
```
### ModelDefinitionID
<a id="cli-model-definition-id-example-schema-ml"></a>

The following example shows the format of the ModelDefinitionID object.

```json

{
  "id" : "4cedab6d-e8e4-4214-b81a-2ddb122db2ab"
}
```
### DataConnectionReference
<a id="cli-data-connection-reference-example-schema-ml"></a>

The following example shows the format of the DataConnectionReference[] object.

```json

[ {
  "id" : "testString",
  "type" : "s3",
  "connection" : {
    "anyKey" : "anyValue"
  },
  "location" : {
    "anyKey" : "anyValue"
  },
  "schema" : {
    "id" : "t1",
    "name" : "Tasks",
    "fields" : [ {
      "anyKey" : "anyValue"
    } ]
  }
} ]
```
### ModelEntitySchemas
<a id="cli-model-entity-schemas-example-schema-ml"></a>

The following example shows the format of the ModelEntitySchemas object.

```json

{
  "input" : [ {
    "id" : "t1",
    "name" : "Tasks",
    "fields" : [ {
      "anyKey" : "anyValue"
    } ]
  } ],
  "output" : [ {
    "id" : "t1",
    "name" : "Tasks",
    "fields" : [ {
      "anyKey" : "anyValue"
    } ]
  } ]
}
```
### ModelEntitySize
<a id="cli-model-entity-size-example-schema-ml"></a>

The following example shows the format of the ModelEntitySize object.

```json

{
  "in_memory" : 72.5,
  "content" : 72.5
}
```
### Metric
<a id="cli-metric-example-schema-ml"></a>

The following example shows the format of the Metric[] object.

```json

[ {
  "timestamp" : "2019-01-01T12:00:00.000Z",
  "iteration" : 2,
  "ml_metrics" : { },
  "ml_federated_metrics" : { },
  "context" : {
    "deployment_id" : "testString",
    "intermediate_model" : {
      "name" : "my_pipeline",
      "process" : "testString",
      "location" : {
        "pipeline" : "testString",
        "pipeline_model" : "testString",
        "model" : "testString"
      },
      "notebook_location" : "testString",
      "sdk_notebook_location" : "testString",
      "pipeline_nodes" : [ "testString" ],
      "composition_steps" : [ "testString" ],
      "duration" : 38,
      "model_asset" : "testString"
    },
    "phase" : "testString",
    "step" : {
      "id" : "testString",
      "name" : "testString",
      "started_at" : "2019-01-01T12:00:00.000Z",
      "completed_at" : "2019-01-01T12:00:00.000Z",
      "hyper_parameters" : {
        "anyKey" : "anyValue"
      },
      "data_allocation" : 38,
      "estimator" : "testString",
      "transformer" : "testString",
      "score" : 72.5
    },
    "classes" : [ "testString" ],
    "binary_classfication" : {
      "confusion_matrices" : [ {
        "true_class" : "testString",
        "tp" : 38,
        "tn" : 38,
        "fp" : 38,
        "fn" : 38
      } ],
      "roc_curves" : [ {
        "true_class" : "testString",
        "tpr" : 72.5,
        "fpr" : 72.5,
        "thresholds" : [ 72.5 ]
      } ]
    },
    "multi_class_classification" : [ {
      "class_name" : "testString",
      "confusion_matrix" : {
        "true_class" : "testString",
        "tp" : 38,
        "tn" : 38,
        "fp" : 38,
        "fn" : 38
      },
      "roc_curve" : {
        "true_class" : "testString",
        "tpr" : 72.5,
        "fpr" : 72.5,
        "thresholds" : [ 72.5 ]
      }
    } ],
    "features_importance" : [ {
      "stage" : "testString",
      "computation_type" : "testString",
      "features" : {
        "anyKey" : "anyValue"
      }
    } ],
    "schema" : "testString",
    "estimators" : [ "testString" ]
  }
} ]
```
### ContentLocation
<a id="cli-content-location-example-schema-ml"></a>

The following example shows the format of the ContentLocation object.

```json

{
  "contents" : [ {
    "content_format" : "testString",
    "location" : "testString",
    "file_name" : "testString",
    "pipeline_node_id" : "testString"
  } ],
  "type" : "s3",
  "connection" : { },
  "location" : { }
}
```
### ModelDefinitionEntityRequestPlatform
<a id="cli-model-definition-entity-request-platform-example-schema-ml"></a>

The following example shows the format of the ModelDefinitionEntityRequestPlatform object.

```json

{
  "name" : "testString",
  "versions" : [ "testString" ]
}
```
### PipelineRel
<a id="cli-pipeline-rel-example-schema-ml"></a>

The following example shows the format of the PipelineRel object.

```json

{
  "id" : "4cedab6d-e8e4-4214-b81a-2ddb122db2ab",
  "rev" : "2",
  "model_type" : "testString",
  "data_bindings" : [ {
    "data_reference_name" : "testString",
    "node_id" : "testString"
  } ],
  "nodes_parameters" : [ {
    "node_id" : "testString",
    "parameters" : {
      "anyKey" : "anyValue"
    }
  } ],
  "hardware_spec" : {
    "id" : "4cedab6d-e8e4-4214-b81a-2ddb122db2ab",
    "rev" : "2",
    "name" : "testString",
    "num_nodes" : 2
  },
  "hybrid_pipeline_hardware_specs" : [ {
    "node_runtime_id" : "autoai.kb",
    "hardware_spec" : {
      "id" : "4cedab6d-e8e4-4214-b81a-2ddb122db2ab",
      "rev" : "2",
      "name" : "testString",
      "num_nodes" : 2
    }
  } ]
}
```
### ModelDefinitionRel
<a id="cli-model-definition-rel-example-schema-ml"></a>

The following example shows the format of the ModelDefinitionRel object.

```json

{
  "id" : "4cedab6d-e8e4-4214-b81a-2ddb122db2ab",
  "rev" : "2",
  "model_type" : "testString",
  "hardware_spec" : {
    "id" : "4cedab6d-e8e4-4214-b81a-2ddb122db2ab",
    "rev" : "2",
    "name" : "testString",
    "num_nodes" : 2
  },
  "software_spec" : {
    "id" : "4cedab6d-e8e4-4214-b81a-2ddb122db2ab",
    "rev" : "2",
    "name" : "..."
  },
  "command" : "testString",
  "parameters" : {
    "anyKey" : "anyValue"
  }
}
```
### FederatedLearning
<a id="cli-federated-learning-example-schema-ml"></a>

The following example shows the format of the FederatedLearning object.

```json

{
  "model" : {
    "type" : "keras",
    "spec" : {
      "href" : {
        "id" : "4cedab6d-e8e4-4214-b81a-2ddb122db2ab",
        "rev" : "2"
      }
    },
    "model_file" : "testString"
  },
  "fusion_type" : "iter_avg",
  "remote_training" : {
    "quorum" : 0.9,
    "remote_training_systems" : [ {
      "id" : "1918939c-2660-4f6a-b727-4b402383dc63",
      "required" : true
    } ]
  },
  "rounds" : 3,
  "termination_accuracy" : 0.9,
  "epochs" : 3,
  "optimizer" : {
    "name" : "testString",
    "spec" : {
      "anyKey" : "anyValue"
    }
  },
  "loss" : "testString",
  "metrics" : "testString",
  "max_depth" : 38,
  "learning_rate" : 72.5,
  "l2_regularization" : 72.5,
  "max_bins" : 38,
  "max_leaf_nodes" : 38,
  "min_samples_leaf" : 38,
  "random_state" : 38,
  "verbose" : true,
  "num_classes" : 38,
  "byzantine_threshold" : 38,
  "hardware_spec" : {
    "id" : "4cedab6d-e8e4-4214-b81a-2ddb122db2ab",
    "rev" : "2",
    "name" : "testString",
    "num_nodes" : 2
  },
  "version" : "testString"
}
```
### TrainingDefinitionRel
<a id="cli-training-definition-rel-example-schema-ml"></a>

The following example shows the format of the TrainingDefinitionRel object.

```json

{
  "id" : "4cedab6d-e8e4-4214-b81a-2ddb122db2ab",
  "rev" : "2"
}
```
### ObjectLocation
<a id="cli-object-location-example-schema-ml"></a>

The following example shows the format of the ObjectLocation object.

```json

{
  "id" : "testString",
  "type" : "s3",
  "connection" : {
    "anyKey" : "anyValue"
  },
  "location" : {
    "anyKey" : "anyValue"
  }
}
```
