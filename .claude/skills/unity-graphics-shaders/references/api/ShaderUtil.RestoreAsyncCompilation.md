<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderUtil.RestoreAsyncCompilation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cmd | Target CommandBuffer. |

### Description

Restores the previous Shader compilation mode in this CommandBuffer scope.

The Editor compiles Shader Variants on-demand, the first time rendering requires a particular Shader Variant. By default, asynchronous Shader compilation is only enabled for requests that originate from the Game View or Scene View. With SetAsyncCompilation, you can add commands to the CommandBuffer that control the Shader compilation during the execution of the buffer. With this method, *RestoreAsyncCompilation*, you can restore the previous compilation mode.

Additional resources: SetAsyncCompilation, allowAsyncCompilation, anythingCompiling, IsPassCompiled, CompilePass.
