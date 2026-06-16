<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BlendShapeBufferLayout.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines the data that Unity returns when you call Mesh.GetBlendShapeBuffer.

When you call `Mesh.GetBlendShapeBuffer`, you can access one of two buffers containing blend shape vertices. Use this value to determine which buffer to access. The default is BlendShapeBufferLayout.PerShape.

Additional resources: Mesh data: blend shapes, Mesh.GetBlendShapeBuffer.

### Properties

| Property | Description |
| --- | --- |
| PerShape | Use this enum to get the blend shape data in blend shape order. |
| PerVertex | Order the data by mesh vertex. |
