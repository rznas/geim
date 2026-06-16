<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.DrawMeshInstanced.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mesh | The Mesh to draw. |
| submeshIndex | Which subset of the mesh to draw. This applies only to meshes that are composed of several materials. |
| material | Material to use. |
| matrices | The array of object transformation matrices. |
| count | The number of instances to be drawn. |
| properties | Additional material properties to apply. See MaterialPropertyBlock. |
| castShadows | Determines whether the Meshes should cast shadows. |
| receiveShadows | Determines whether the Meshes should receive shadows. |
| layer | Layer to use. |
| camera | If `null` (default), the mesh will be drawn in all cameras. Otherwise it will be drawn in the given Camera only. |
| lightProbeUsage | LightProbeUsage for the instances. |

### Description

Draws the same mesh multiple times using GPU instancing.

Similar to Graphics.DrawMesh, this function draws meshes for one frame without the overhead of creating unnecessary game objects. This function is now obsolete. Use Graphics.RenderMeshInstanced instead. Use this function in situations where you want to draw the same mesh for a particular amount of times using an instanced shader. Unity culls and sorts instanced Meshes as a group. It creates an axis-aligned bounding box that contains all the Meshes, calculates the center point, then uses this information to cull and sort the Mesh instances. Note that after culling and sorting the combined instances, Unity does not further cull individual instances by the view frustum or baked occluders. It also does not sort individual instances for transparency or depth efficiency.

The transformation matrix of each instance of the mesh should be packed into the `matrices` array. You can specify the number of instances to draw, or by default it is the length of the `matrices` array. Other per-instance data, if required by the shader, should be provided by creating arrays on the MaterialPropertyBlock argument using MaterialPropertyBlock.SetFloatArray, MaterialPropertyBlock.SetVectorArray and MaterialPropertyBlock.SetMatrixArray.

To render the instances with light probes, provide the light probe data via the MaterialPropertyBlock and specify `lightProbeUsage` with LightProbeUsage.CustomProvided. Check LightProbes.CalculateInterpolatedLightAndOcclusionProbes for the details.

Note: You can only draw a maximum of 1023 instances at once.

InvalidOperationException will be thrown if the material doesn't have Material.enableInstancing set to true, or the current platform doesn't support this API (i.e. if GPU instancing is not available). See SystemInfo.supportsInstancing.

Additional resources: Graphics.DrawMesh, Graphics.RenderMeshInstanced.
