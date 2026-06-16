<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidProjectFilesModifierContext.AddDirectoryToCopy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| source | The path to the source directory. This can be an absolute or relative path. If it's relative, the root of the path is the Unity project's root. |
| destination | The path to place the directory copy. This is relative to the Gradle project root. |
| includePattern | A Regex filter to include files. Default value is 'null' |
| excludePattern | A Regex filter to exclude files. Default value is '\.meta$' |

### Description

Declare a directory to copy into the Gradle project.

If any files in the directory copy have the same destination as a file that has already been added, Unity throws an exception.
