<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.SetAdditionalIl2CppArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| additionalArgs | The additional arguments passed to the IL2CPP compiler during the build process. |

### Description

Set additional arguments passed to the IL2CPP compiler during the build process.

Sets additional C++ compiler arguments for an IL2CPP build. The Unity Editor normally passes a number of command line arguments to IL2CPP as part of the build process. This method allows you to specify additional compiler options. Provide compiler arguments as a single string, with spaces separating each argument. Pass an empty string to this method to remove any previously provided additional arguments. Valid compiler flags depend on the platform you are building for and the C++ compiler used by IL2CPP on that platform. Use GetAdditionalIl2CppArgs to determine the argument string previously provided to this method. 

For more information on the correct syntax and usage for passing arguments to this method, refer to Additional IL2CPP compiler arguments in the Unity Manual.

**Warning**: Passing additional arguments to the IL2CPP compiler is an experimental feature for debugging and optimizing IL2CPP code generation in complex projects. Like diagnostics switches, it's intended for use by advanced developers in coordination with Unity support staff. Arguments are passed directly to the C++ compiler with no interpretation, which means there is a high risk of breaking builds. Unity reserves the right to change or remove this feature without notice.
