<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidProjectFilesModifierContext.AddFileAsGuidToCopy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| guid | The GUID of an asset in your Unity project. |
| destination | The path to place the asset copy. This is relative to the Gradle project root. |

### Description

Declare an asset to copy into the Gradle project.

If another file with the same destination has already been added, Unity throws an exception.
