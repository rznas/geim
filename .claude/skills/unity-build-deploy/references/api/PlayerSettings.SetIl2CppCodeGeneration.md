<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.SetIl2CppCodeGeneration.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTarget | The NamedBuildTarget. |
| value | Code generation option. |

### Description

Sets the code generation option for IL2CPP for the specified build target.

There are two options for IL2CPP code generation. Il2CppCodeGeneration.OptimizeSpeed generates code that is optimized for runtime performance. This is the default and the behavior in previous versions of Unity. Il2CppCodeGeneration.OptimizeSize generates code that is optimized for build size and iteration. It generates less code and produces a smaller build but may have an impact on runtime performance, especially for generic code. You should consider this option when faster build times are important, such as when iterating on changes.

Additionally, Il2CppCodeGeneration.OptimizeSize generates a universal version of each generic type and method. This avoids some restrictions Il2CppCodeGeneration.OptimizeSpeed has when executing generic code.
