<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderUtil.SetAsyncCompilation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cmd | Target CommandBuffer. |
| allow | Is async Shader compilation allowed or not. |

### Description

Adds shader compilation mode command in the CommandBuffer.

The Editor compiles Shader Variants on-demand, the first time rendering requires a particular Shader Variant. By default, asynchronous Shader compilation is only enabled for requests that originate from the Game View or Scene View. With this method, you can add commands to CommandBuffer that control the Shader compilation during the execution of the buffer. This lets you disable and enable asynchronous compilation on specific parts of rendering, both for Game View, Scene View and other Views, for example custom tools. To restore the previous compilation mode, see RestoreAsyncCompilation.

Additional resources: RestoreAsyncCompilation, allowAsyncCompilation, anythingCompiling, IsPassCompiled, CompilePass.
