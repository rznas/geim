<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.CodeEditor.CodeEditor.GetInstallationForPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| editorPath | The absolute path to an executable. |

### Returns

**Installation** An Installation representation of the path.

### Description

Each registered code editor package has an instance of IExternalCodeEditor. This method invokes IExternalCodeEditor.TryGetInstallationForPath on that instance. It finds the first instance that returns a valid installation, and returns the installation.
