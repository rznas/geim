<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication.SetTemporaryProjectKeepPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The path that the current temporary project should be relocated to when closing it. |

### Description

Sets the path that Unity should store the current temporary project at, when the project is closed.

Usually, when the user closes a temporary project (by opening another project, or exiting Unity), they are prompted to keep the project by selecting a permanent location for it. If you pass a non-empty path to this function, the prompt will be bypassed and the temporary project will be automatically relocated to the provided path.

It is an error to call this API if EditorApplication.isTemporaryProject is not true.
