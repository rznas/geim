<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.DrawMeshInstancedProcedural.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mesh | The Mesh to draw. |
| submeshIndex | Which subset of the mesh to draw. This only applies to meshes that are composed of several materials. |
| material | Material to use. |
| shaderPass | Which pass of the shader to use, or -1 which renders all passes. |
| count | The number of instances to be drawn. |
| properties | Additional Material properties to apply onto the Material just before this Mesh is drawn. See MaterialPropertyBlock. |

### Description

Add a "draw mesh with instancing" command.

Draw a mesh using Procedural Instancing. This is similar to Graphics.DrawMeshInstancedIndirect, except that when the instance count is known from script, it can be supplied directly using this method, rather than via a ComputeBuffer. If Material.enableInstancing is false, the command logs an error and skips rendering each time the command is executed; the command does not immediately fail and throw an exception.

InvalidOperationException will be thrown if the current platform doesn't support this API (for example, if GPU instancing is not available). See SystemInfo.supportsInstancing.

Additional resources: DrawMesh, Graphics.DrawMeshInstancedProcedural, MaterialPropertyBlock.
