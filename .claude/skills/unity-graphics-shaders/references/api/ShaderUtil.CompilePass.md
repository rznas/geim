<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderUtil.CompilePass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| material | Target Material. |
| pass | Index of the target Shader pass. |
| forceSync | Forces the script execution to wait until the compilation has finished. Optional. |

### Description

Request the Editor to compile the Shader Variant needed for the specific pass of the given Material.

Additional resources: IsPassCompiled, allowAsyncCompilation, anythingCompiling, SetAsyncCompilation, RestoreAsyncCompilation.
