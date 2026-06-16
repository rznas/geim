<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.DrawMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mesh | Mesh to draw. |
| matrix | Transformation matrix to use. |
| material | Material to use. |
| submeshIndex | Which subset of the mesh to render. |
| shaderPass | Which pass of the shader to use (default is -1, which renders all passes). |
| properties | Additional Material properties to apply onto the Material just before this Mesh is drawn. See MaterialPropertyBlock. |

### Description

Add a "draw mesh" command.

Note that the rendered mesh will not have any lighting related shader data (light colors, directions, shadows, light and reflection probes etc.) set up. If the shader used by the material uses any lighting related variables, the results are undefined.

Additional resources: DrawRenderer, MaterialPropertyBlock.
