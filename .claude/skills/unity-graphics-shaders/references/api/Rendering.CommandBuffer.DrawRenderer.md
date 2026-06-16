<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.DrawRenderer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| renderer | Renderer to draw. |
| material | Material to use. |
| submeshIndex | Which subset of the mesh to render. |
| shaderPass | Which pass of the shader to use (default is -1, which renders all passes). |

### Description

Add a "draw renderer" command.

Note that the rendered mesh will not have any lighting related shader data (light colors, directions, shadows, light and reflection probes etc.) set up. If the shader used by the material uses any lighting related variables, the results are undefined.

Additional resources: DrawMesh.
