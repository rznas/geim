<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/SL-UnityShaderVariables.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Built-in shader variables reference

Unity’s built-in include files contain global variables for your **shaders**: things like current object’s transformation matrices, light parameters, current time and so on. You use them in shader programs like any other variable, but if you include the relevant include file, you don’t have to declare them.

For more information on include files, see Built-in include files.

## Vertex input structures

| **Structure** | **Description** |
| --- | --- |
| `appdata_base` | Declares `vertex` for position, `normal`, and `texcoord`. |
| `appdata_tan` | Declares `vertex` for position, `tangent`, `normal`, and `texcoord`. |
| `appdata_full` | Declares `vertex` for position, `tangent`, `normal`, `color`, `texcoord`, `texcoord1`, `texcoord2`, and `texcoord3`. |
| `appdata_img` | Declares `vertex` for position, and `texcoord`. |

For more information, refer to Input data into a custom shader.

## Inline sampler suffixes

Add the following suffixes when you declare an inline `SamplerState` sampler in HLSL code, to manually set texture filtering and wrapping modes. Separate multiple words with an underscore (`_`). For example, to set a sampler to use linear filtering and repeat wrapping mode, name it `sampler_linear_repeat`.

**Note**: These sampler suffixes only work if you target the DX11, DX12, Metal or Vulkan graphics API.

You must include a single filtering mode and a single texture wrapping mode. The other suffixes are optional.

| **Suffix** | **Description** |
| --- | --- |
| `point` | Enables nearest texture filtering. |
| `linear` | Enables bilinear texture filtering. |
| `trilinear` | Enables trilinear texture filtering. |
| `clamp` | Sets the texture wrapping mode to clamp. |
| `repeat` | Sets the texture wrapping mode to repeat. |
| `mirror` | Sets the texture wrapping mode to mirror. |
| `mirroronce` | Sets the texture wrapping mode to mirror once. If you target a mobile platform that doesn’t support `mirroronce`, Unity falls back to `mirror`. |
| `compare` | Sets the sampler to compare depth values. For more information refer to [SampleCmp](https://learn.microsoft.com/en-us/windows/win32/direct3dhlsl/dx-graphics-hlsl-to-samplecmp) and [SampleCmpLevelZero](https://learn.microsoft.com/en-us/windows/win32/direct3dhlsl/dx-graphics-hlsl-to-samplecmplevelzero) in the Microsoft HLSL documentation. |
| `aniso2`, `aniso4`, `aniso8`, `aniso16` | Enables anisotropic filtering with 2x, 4x, 8x, or 16x sampling. Depending on the graphics API and platform you target, Unity might clamp the filtering to a lower value, or disable anisotropic filtering completely. |

Add `U`, `V` or `W` to a wrap mode to set the wrapping mode for that axis only. For example, `sampler_clampu_point` sets the U axis to clamp mode, and leaves the V and W axes at their default wrapping mode.

For more information, refer to:

- `Texture.wrapMode`
- `Texture.anisoLevel`
- `Texture.filterMode`

## Transformations

All these matrices are `float4x4` type, and are column major.

| **Name** | **Value** |
| --- | --- |
| UNITY_MATRIX_MVP | Current model * view * projection matrix. |
| UNITY_MATRIX_MV | Current model * view matrix. |
| UNITY_MATRIX_V | Current view matrix. |
| UNITY_MATRIX_P | Current projection matrix. |
| UNITY_MATRIX_VP | Current view * projection matrix. |
| UNITY_MATRIX_T_MV | Transpose of model * view matrix. |
| UNITY_MATRIX_IT_MV | Inverse transpose of model * view matrix. |
| unity_ObjectToWorld | Current model matrix. |
| unity_WorldToObject | Inverse of current world matrix. |

## Camera and screen

These variables will correspond to the Camera that is rendering. For example during shadowmap rendering, they will still refer to the Camera component values, and not the “virtual camera” that is used for the shadowmap projection.

| **Name** | **Type** | **Value** |
| --- | --- | --- |
| _WorldSpaceCameraPos | float3 | World space position of the camera. |
| _ProjectionParams | float4 | `x` is 1.0 (or –1.0 if currently rendering with a flipped projection matrix), `y` is the camera’s near plane, `z` is the camera’s far plane and `w` is 1/FarPlane. |
| _ScreenParams | float4 | `x` is the width of the camera’s target texture in **pixels**, `y` is the height of the camera’s target texture in pixels, `z` is 1.0 + 1.0/width and `w` is 1.0 + 1.0/height. |
| _ZBufferParams | float4 | Used to linearize Z buffer values.  `x`: `1 - far/near`, or `–1 + far/near` if `UNITY_REVERSED_Z` is set to 1.  For more information about `UNITY_REVERSED_Z`, refer to Branch based on platform features.   `y`: `far/near`, or `1` if `UNITY_REVERSED_Z` is set to 1.  For more information about `UNITY_REVERSED_Z`, refer to Branch based on platform features.   `z`: `x / far`   `w`: `y / far` |
| unity_OrthoParams | float4 | The following parameters:   `x`: half the width of the camera view in world space  `y`: half the height of the camera view in world space  `z`: unused  `w`: 1.0 if the camera is orthographic, or 0.0 if the camera is perspective |
| unity_CameraProjection | float4x4 | Camera’s projection matrix. |
| unity_CameraInvProjection | float4x4 | Inverse of camera’s projection matrix. |
| unity_CameraWorldClipPlanes[6] | float4 | Camera frustum plane world space equations, in this order: left, right, bottom, top, near, far. |

## Time

Time is measured in seconds, and is scaled by the Time multiplier in your Project’s Time settings. There is no built-in variable that provides access to unscaled time.

Time matches `Time.time`, which is the time since the application started. If you use the Built-In **Render Pipeline**, time matches `Time.timeSinceLevelLoad` instead.

| **Name** | **Type** | **Value** |
| --- | --- | --- |
| _Time | float4 | `(t/20, t, t\*2, t\*3)`. Use for animations inside shaders. |
| _SinTime | float4 | Sine of time: (t/8, t/4, t/2, t). |
| _CosTime | float4 | Cosine of time: (t/8, t/4, t/2, t). |
| unity_DeltaTime | float4 | Delta time: (dt, 1/dt, smoothDt, 1/smoothDt). |

## Lighting

Light parameters are passed to shaders in different ways depending on which Rendering Path is used, and which LightMode Pass Tag is used in the shader.

Forward rendering (`ForwardBase` and `ForwardAdd` pass types):

| **Name** | **Type** | **Value** |
| --- | --- | --- |
| _LightColor0 *(declared in UnityLightingCommon.cginc)* | fixed4 | Light color. |
| _WorldSpaceLightPos0 | float4 | Directional lights: (world space direction, 0). Other lights: (world space position, 1). |
| unity_WorldToLight *(declared in AutoLight.cginc)* | float4x4 | World-to-light matrix. Used to sample cookie & attenuation textures. |
| unity_4LightPosX0, unity_4LightPosY0, unity_4LightPosZ0 | float4 | *(ForwardBase pass only)* world space positions of first four non-important point lights. |
| unity_4LightAtten0 | float4 | *(ForwardBase pass only)* attenuation factors of first four non-important point lights. |
| unity_LightColor | half4[4] | *(ForwardBase pass only)* colors of of first four non-important point lights. |
| unity_WorldToShadow | float4x4[4] | World-to-shadow matrices. One matrix for Spot Lights, up to four for directional light cascades. |

Deferred shading, used in the lighting pass shader (all declared in UnityDeferredLibrary.cginc):

| **Name** | **Type** | **Value** |
| --- | --- | --- |
| _LightColor | float4 | Light color. |
| unity_WorldToLight | float4x4 | World-to-light matrix. Used to sample cookie & attenuation textures. |
| unity_WorldToShadow | float4x4[4] | World-to-shadow matrices. One matrix for Spot Lights, up to four for directional light cascades. |

Spherical harmonics coefficients (used by ambient and light probes) are set up for `ForwardBase` and `Deferred` pass types. They contain 3rd order SH to be evaluated by world space normal (see `ShadeSH9` from UnityCG.cginc). The variables are all half4 type, `unity_SHAr` and similar names.

Vertex-lit rendering (`Vertex` pass type):

Up to 8 lights are set up for a `Vertex` pass type; always sorted starting from the brightest one. So if you want to render objects affected by two lights at once, you can just take first two entries in the arrays. If there are fewer than eight lights affecting the object, the rest will have their color set to black.

| **Name** | **Type** | **Value** |
| --- | --- | --- |
| unity_LightColor | half4[8] | Light colors. |
| unity_LightPosition | float4[8] | View-space light positions. (-direction,0) for directional lights; (position,1) for Point or Spot Lights. |
| unity_LightAtten | half4[8] | Light attenuation factors. *x* is cos(spotAngle/2) or –1 for non-Spot Lights; *y* is 1/cos(spotAngle/4) or 1 for non-Spot Lights; *z* is quadratic attenuation; *w* is squared light range. |
| unity_SpotDirection | float4[8] | View-space Spot Lights positions; (0,0,1,0) for non-Spot Lights. |

## Lightmaps

| **Name** | **Type** | **Value** |
| --- | --- | --- |
| unity_Lightmap | Texture2D | Contains **lightmap** information. |
| unity_LightmapST | float4[8] | Scales and translates the UV information to the correct range to sample the lightmap texture. |

## Fog and Ambient

| **Name** | **Type** | **Value** |
| --- | --- | --- |
| unity_AmbientSky | fixed4 | Sky ambient lighting color in gradient ambient lighting case. |
| unity_AmbientEquator | fixed4 | Equator ambient lighting color in gradient ambient lighting case. |
| unity_AmbientGround | fixed4 | Ground ambient lighting color in gradient ambient lighting case. |
| unity_IndirectSpecColor | fixed4 | If you use a skybox, this is the average color of the skybox, which Unity calculates using the `DC` component of the spherical harmonics data in the ambient probe. Otherwise this is black. |
| UNITY_LIGHTMODEL_AMBIENT | fixed4 | Ambient lighting color (sky color in gradient ambient case). Legacy variable. |
| unity_FogColor | fixed4 | Fog color. |
| unity_FogParams | float4 | Parameters for fog calculation: (density / sqrt(ln(2)), density / ln(2), –1/(end-start), end/(end-start)). *x* is useful for Exp2 fog mode, *y* for Exp mode, *z* and *w* for Linear mode. |

## Various

| **Name** | **Type** | **Value** |
| --- | --- | --- |
| unity_LODFade | float4 | Level-of-detail fade when using LODGroup. *x* is fade (0..1), *y* is fade quantized to 16 levels, *z* and *w* unused. |
| _TextureSampleAdd | float4 | Set automatically by Unity **for UI only** based on whether the texture being used is in Alpha8 format (the value is set to (1,1,1,0)) or not (the value is set to (0,0,0,0)). |
