<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SkinnedMeshRenderer.GetBlendShapeWeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index of the BlendShape whose weight you want to retrieve. Index must be smaller than the Mesh.blendShapeCount of the Mesh attached to this Renderer. |

### Returns

**float** The weight of the BlendShape.

### Description

Returns the weight of a BlendShape for this Renderer.

The weight of a BlendShape represents how much the Mesh has been blended (or morphed) from its original shape to a target BlendShape (another Mesh containing the same topology, but with different vertex positions than the original). The BlendShape weight range includes values between the minimum and the maximum weights defined in the model.

Additional resources: SetBlendShapeWeight.
