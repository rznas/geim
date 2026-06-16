<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderUtil-allowAsyncCompilation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

When true, asynchronous Shader compilation is allowed at the current call site.

The Editor compiles Shader Variants on-demand, the first time rendering requires a particular Shader Variant. By default, asynchronous Shader compilation is only enabled for requests that originate from the Game View or Scene View. With this property, you can control the compilation more precisely. For example, you can allow asynchronous compilation for custom Editor tools. You can also force synchronous compilation on parts of rendering where asynchronous compilation would be used by default. This property takes effect immediately. For CommandBuffer based control, see SetAsyncCompilation.

Additional resources: SetAsyncCompilation, RestoreAsyncCompilation, anythingCompiling, IsPassCompiled, CompilePass.
