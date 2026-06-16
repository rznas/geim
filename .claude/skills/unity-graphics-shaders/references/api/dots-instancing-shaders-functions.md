<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/dots-instancing-shaders-functions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# DOTS Instancing shader functions reference for URP

Alongside the access macros, Unity provides **shader** functions that load the values of constants directly from the draw command data. Shaders that Unity provides use these functions.

Unity provides the following shader functions:

| **Shader function** | **Description** |
| --- | --- |
| `LoadDOTSInstancedData_RenderingLayer` | Returns the renderingLayerMask for the draw command. |
| `LoadDOTSInstancedData_MotionVectorsParams` | Returns the motion vector generation mode for the draw command. This is formatted as a float4, which is what Unity shaders expect. |
| `LoadDOTSInstancedData_WorldTransformParams` | Returns whether to draw the instance with a flipped triangle winding. See FlipWinding. |
| `LoadDOTSInstancedData_LightData` | Returns whether the **scene**’s main Directional Light is active for the instance. The main light can be deactivated for multiple reasons, for example if the light already included in light maps. |
| `LoadDOTSInstancedData_LODFade` | Returns the 8 bit crossfade value you set if the LODCrossFade flag is set. If the flag is not set, the return value is undefined. |
