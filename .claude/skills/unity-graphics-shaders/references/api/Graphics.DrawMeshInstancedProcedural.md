<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.DrawMeshInstancedProcedural.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mesh | The Mesh to draw. |
| submeshIndex | Which subset of the mesh to draw. This applies only to meshes that are composed of several materials. |
| material | Material to use. |
| bounds | The bounding volume surrounding the instances you intend to draw. |
| count | The number of instances to be drawn. |
| properties | Additional material properties to apply. See MaterialPropertyBlock. |
| castShadows | Determines whether the Meshes should cast shadows. |
| receiveShadows | Determines whether the Meshes should receive shadows. |
| layer | Layer to use. |
| camera | If `null` (default), the mesh will be drawn in all cameras. Otherwise it will be drawn in the given Camera only. |
| lightProbeUsage | LightProbeUsage for the instances. |

### Description

This function is now obsolete. Use Graphics.RenderMeshPrimitives instead. Draws the same mesh multiple times using GPU instancing. This is similar to Graphics.DrawMeshInstancedIndirect, except that when the instance count is known from script, it can be supplied directly using this method, rather than via a ComputeBuffer.

To render the instances with light probes, provide the light probe data via the MaterialPropertyBlock and specify `lightProbeUsage` with LightProbeUsage.CustomProvided. Check LightProbes.CalculateInterpolatedLightAndOcclusionProbes for the details. Additional resources: Graphics.RenderMeshPrimitives.
