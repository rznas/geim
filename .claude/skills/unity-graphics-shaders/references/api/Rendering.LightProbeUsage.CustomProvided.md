<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LightProbeUsage.CustomProvided.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The light probe shader uniform values are extracted from the material property block set on the renderer.

Property `unity_SHAr`, `unity_SHAg`, `unity_SHAb`, `unity_SHBr`, `unity_SHBg`, `unity_SHBb` and `unity_SHC` will be set to zero if they are not part of the MaterialPropertyBlock.
 Property `unity_ProbesOcclusion` will be calculated as in normal lighting if it is not part of the MaterialPropertyBlock.

Note that using the light probe values baked at a different place may lead to incorrect rendering, especially when local lights (i.e. point lights and spot lights) are used. This mode is more useful when drawing instanced objects with Graphics.DrawMeshInstanced, where the light probe data is pre-calculated and provided as arrays.

Additional resources: MaterialPropertyBlock, MaterialPropertyBlock.CopySHCoefficientArraysFrom, MaterialPropertyBlock.CopyProbeOcclusionArrayFrom.
