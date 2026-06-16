<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.BuildCallbackVersionAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Attribute to provide a version number for IProcessSceneWithReport callbacks.

This attribute is used to inform the build system when the callback implementation changes and the build result needs to be regenerated. Therefore, developers should bump the version number when changing the implementation of the callback. If the attribute is not specified, the implied version number is 1.

 Additional resources: IProcessSceneWithReport, EditorBuildSettings.UseParallelAssetBundleBuilding

### Properties

| Property | Description |
| --- | --- |
| Version | Version number. |

### Constructors

| Constructor | Description |
| --- | --- |
| BuildCallbackVersionAttribute | Constructor taking the version number for the callback. |
