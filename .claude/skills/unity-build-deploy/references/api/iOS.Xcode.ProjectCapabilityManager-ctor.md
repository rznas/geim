<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.ProjectCapabilityManager-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| pbxProjectPath | The project path provided by IPostprocessBuildWithReport.OnPostprocessBuild. |
| entitlementFileName | Name of the entitlements file. |
| targetName | Name of the target project. |
| targetGuid | The GUID of the target as returned by PBXProject.TargetGuidByName |

### Description

Creates a new ProjectCapabilityManager object.

**Note**: To use this method, you need to provide either a `targetName` or a `targetGuid`. If you provide both or none, Unity throws an exception.
