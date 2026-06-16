<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsStateCollection-runtimePlatform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The platform that the collection is intended to be used with.

The same shader variant and graphics state on different platforms can result in different GPU representations. To ensure that the accurate GPU representation is created, it is recommended that a collection is prewarmed on the same platform that it was recorded on. When a collection is recorded via BeginTrace/EndTrace, this value is set to Application.platform. 

Additional resources: RuntimePlatform.
