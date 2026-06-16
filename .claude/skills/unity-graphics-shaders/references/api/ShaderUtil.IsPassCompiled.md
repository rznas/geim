<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderUtil.IsPassCompiled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| material | The Material to check against. |
| pass | The index of the Shader pass to check. |

### Description

Checks if the Shader variant for the given pass in the Material has already been compiled.

The Editor can compile Shaders asynchronously. You can use this method to check if the Editor has already compiled the particular Shader Variant needed for the specific pass of the Material.

Additional resources: :ref::CompilePass, allowAsyncCompilation, anythingCompiling, SetAsyncCompilation, RestoreAsyncCompilation.
