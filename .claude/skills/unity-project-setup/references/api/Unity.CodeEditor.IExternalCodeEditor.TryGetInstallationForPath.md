<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.CodeEditor.IExternalCodeEditor.TryGetInstallationForPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| editorPath | The absolute path of the chosen code editor. |
| installation | To store the resulting Installation. If return value is false, this result is ignored. |

### Returns

**bool** Whether this IExternalCodeEditor can support the **editorPath** implementation.

### Description

Unity stores the path of the chosen editor. An instance of IExternalCodeEditor can take responsibility for this path, by returning true when this method is being called. The `out` variable **installation** need to be constructed with the path and the name that should be shown in the "External Tools" code editor list.

For supported code editor paths, this function sets the output variable **installation** to an instance of Installation which describes the name that appears in the Editor Preference > Editor Tool section.
