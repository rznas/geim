<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsStateCollection-graphicsDeviceType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The graphics device API type the collection is intended to be used with.

The same shader variant and graphics state on different graphics APIs can result in different GPU representations. To ensure that the accurate GPU representation is created, it is recommended that a collection is prewarmed on the same graphics API that it was recorded on. When a collection is recorded via BeginTrace/EndTrace, this value is set to SystemInfo.graphicsDeviceType. 

Additional resources: GraphicsDeviceType.
