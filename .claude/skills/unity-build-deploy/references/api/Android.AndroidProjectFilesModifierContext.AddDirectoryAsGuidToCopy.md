<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidProjectFilesModifierContext.AddDirectoryAsGuidToCopy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| guid | The GUID of a directory in your Unity project. |
| destination | The path to place the directory copy. This is relative to the Gradle project root. |
| includePattern | A Regex filter to include files. Default value is 'null' |
| excludePattern | A Regex filter to exclude files. Default value is '\.meta$' |

### Description

Declare a directory to copy into the Gradle project.

If any files in the directory copy have the same destination as a file that has already been added, Unity throws an exception.
