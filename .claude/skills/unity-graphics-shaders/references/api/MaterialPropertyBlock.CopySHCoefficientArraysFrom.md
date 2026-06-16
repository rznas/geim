<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialPropertyBlock.CopySHCoefficientArraysFrom.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| lightProbes | The array of SH values to copy from. |

### Description

This function converts and copies the entire source array into 7 Vector4 property arrays named `unity_SHAr`, `unity_SHAg`, `unity_SHAb`, `unity_SHBr`, `unity_SHBg`, `unity_SHBb` and `unity_SHC` for use with instanced light probe rendering.

If the array properties don't exist on the MaterialPropertyBlock, they will be created with the length of the source array.
 Call LightProbes.CalculateInterpolatedLightAndOcclusionProbes to calculate SH values at the given world space positions.
 ArgumentNullException is thrown if `lightProbes` is `null`.
 Note that all MaterialPropertyBlock arrays can only have a maximum of 1023 elements. Warnings are printed and the excess array elements are ignored if the source array exceeds the range.

Additional resources: CopyProbeOcclusionArrayFrom, Graphics.RenderMeshInstanced, CommandBuffer.DrawMeshInstanced.

### Parameters

| Parameter | Description |
| --- | --- |
| lightProbes | The array of SH values to copy from. |
| sourceStart | The index of the first element in the source array to copy from. |
| destStart | The index of the first element in the destination MaterialPropertyBlock array to copy to. |
| count | The number of elements to copy. |

### Description

This function converts and copies the source array into 7 Vector4 property arrays named `unity_SHAr`, `unity_SHAg`, `unity_SHAb`, `unity_SHBr`, `unity_SHBg`, `unity_SHBb` and `unity_SHC` with the specified source and destination range for use with instanced light probe rendering.

If the array properties don't exist on the MaterialPropertyBlock, they will be created with the length of the spcified range.
 Call LightProbes.CalculateInterpolatedLightAndOcclusionProbes to calculate SH values at the given world space positions.
 ArgumentNullException is thrown if `occlusionProbes` is `null`.
 ArgumentOutOfRangeException is thrown if the source or destination range is invalid.
 Note that all MaterialPropertyBlock arrays can only have a maximum of 1023 elements. Warnings are printed and the excess array elements are ignored if the source array exceeds the range.

Additional resources: CopyProbeOcclusionArrayFrom, Graphics.RenderMeshInstanced, CommandBuffer.DrawMeshInstanced.
