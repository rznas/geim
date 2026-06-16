<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.CodeEditor.IExternalCodeEditor.OpenProject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| line | Line number to open the file on. |
| column | Column to move cursor to on the specific line. |

### Returns

**bool** Whether the request went successfully.

### Description

The external code editor needs to handle the request to open a file.

The interface defines a default argument for this method, filePath empty string, line -1, column -1. This requests is a special case where the IDE is requested to open the project, but no specific file, and can be handled differently across integrations.
