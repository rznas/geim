<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidProjectFilesModifierContext.AddFileToCopy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| source | The path to a source file. This can be an absolute or relative path. If it's relative, the root of the path is the Unity project's root. |
| destination | The path to place the file copy. This is relative to the Gradle project root. |

### Description

Declare a file to copy into the Gradle project.

If another file with the same destination has already been added, Unity throws an exception.
