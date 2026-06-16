<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.DrawMeshInstanced.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mesh | The Mesh to draw. |
| submeshIndex | Which subset of the mesh to draw. This only applies to meshes that are composed of several materials. |
| material | Material to use. |
| shaderPass | Which pass of the shader to use, or -1 which renders all passes. |
| matrices | The array of object transformation matrices. |
| count | The number of instances to be drawn. |
| properties | Additional Material properties to apply onto the Material just before this Mesh is drawn. See MaterialPropertyBlock. |

### Description

Adds a "draw mesh with instancing" command.

The mesh will be just drawn once, it won't be per-pixel lit and will not cast or receive realtime shadows.

The command will not immediately fail and throw an exception if Material.enableInstancing is false, but it will log an error and skips rendering each time the command is being executed if such a condition is detected.

InvalidOperationException will be thrown if the current platform doesn't support this API (i.e. if GPU instancing is not available). See SystemInfo.supportsInstancing.

Additional resources: DrawMesh, Graphics.DrawMeshInstanced, MaterialPropertyBlock.
