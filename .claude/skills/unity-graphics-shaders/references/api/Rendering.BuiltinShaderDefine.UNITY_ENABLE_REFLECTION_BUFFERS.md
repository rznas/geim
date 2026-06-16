<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BuiltinShaderDefine.UNITY_ENABLE_REFLECTION_BUFFERS.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

UNITY_ENABLE_REFLECTION_BUFFERS is set when deferred shading renders reflection probes in deferred mode. With this option set reflections are rendered into a per-pixel buffer. This is similar to the way lights are rendered into a per-pixel buffer. UNITY_ENABLE_REFLECTION_BUFFERS is on by default when using deferred shading, but you can turn it off by setting “No support” for the Deferred Reflections shader option in Graphics Settings. When the setting is off, reflection probes are rendered per-object, similar to the way forward rendering works.

Additional resources: BuiltinShaderType.DeferredReflections.
