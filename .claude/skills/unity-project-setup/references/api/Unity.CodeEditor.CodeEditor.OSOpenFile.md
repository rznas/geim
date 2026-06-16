<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.CodeEditor.CodeEditor.OSOpenFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| appPath | The absolute path of the application to open. |
| arguments | The arguments to be passed to the application. You must make sure any paths are quoted correctly for the current platform. |

### Description

Open an application with a quoted string of arguments.

This method is useful if you want to write a custom tool in the Unity Editor which launches a local application with arguments. The Unity Editor passes this request to the operating system's native support for opening applications. Note: Because the path and parameters you supply are passed directly on to the OS, you must ensure they are correctly quoted for the current platform. You can use Application.platform to detect the current platform.
