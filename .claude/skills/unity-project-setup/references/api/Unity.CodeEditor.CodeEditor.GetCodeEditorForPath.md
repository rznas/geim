<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.CodeEditor.CodeEditor.GetCodeEditorForPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| editorPath | The absolute path to an executable. |

### Returns

**IExternalCodeEditor** Returns an IExternalCodeEditor representing the package responsible for the editor path.

### Description

Each registered code editor package has an instance of IExternalCodeEditor. This method invokes IExternalCodeEditor.TryGetInstallationForPath on that instance. It returns the first instance that returns a valid installation.
