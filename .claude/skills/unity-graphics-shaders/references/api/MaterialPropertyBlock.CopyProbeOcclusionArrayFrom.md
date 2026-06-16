<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialPropertyBlock.CopyProbeOcclusionArrayFrom.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| occlusionProbes | The array of probe occlusion values to copy from. |

### Description

This function copies the entire source array into a Vector4 property array named `unity_ProbesOcclusion` for use with instanced Shadowmask rendering.

If the array property doesn't exist on the MaterialPropertyBlock, it will be created with the length of the source array.
 Call LightProbes.CalculateInterpolatedLightAndOcclusionProbes to calculate probe occlusion values at the given world space positions.
 ArgumentNullException is thrown if `occlusionProbes` is `null`.
 Note that all MaterialPropertyBlock arrays can only have a maximum of 1023 elements. Warnings are printed and the excess array elements are ignored if the source array exceeds the range.

Additional resources: CopySHCoefficientArraysFrom, Graphics.RenderMeshInstanced, CommandBuffer.DrawMeshInstanced.

### Parameters

| Parameter | Description |
| --- | --- |
| occlusionProbes | The array of probe occlusion values to copy from. |
| sourceStart | The index of the first element in the source array to copy from. |
| destStart | The index of the first element in the destination MaterialPropertyBlock array to copy to. |
| count | The number of elements to copy. |

### Description

This function copies the source array into a Vector4 property array named `unity_ProbesOcclusion` with the specified source and destination range for use with instanced Shadowmask rendering.

If the array property doesn't exist on the MaterialPropertyBlock, it will be created with the length of the spcified range.
 Call LightProbes.CalculateInterpolatedLightAndOcclusionProbes to calculate probe occlusion values at the given world space positions.
 ArgumentNullException is thrown if `occlusionProbes` is `null`.
 ArgumentOutOfRangeException is thrown if the source or destination range is invalid.
 Note that all MaterialPropertyBlock arrays can only have a maximum of 1023 elements. Warnings are printed and the excess array elements are ignored if the source array exceeds the range.

Additional resources: CopySHCoefficientArraysFrom, Graphics.RenderMeshInstanced, CommandBuffer.DrawMeshInstanced.
