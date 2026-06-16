<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.TilemapRenderer.SetShaderUserValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| v | The integer to assign to the renderer as a custom value to be used in shaders. |

### Description

Assign a custom value to this renderer.

The `SetShaderUserValue` method assigns a custom integer value to a renderer. You can then access the value in your shaders as the `unity_RendererUserValue` variable. You can use this method to change how a shader draws each renderer, without using different materials or additional CPU time.

 **Note**: The value of the `unity_RendererUserValue` shader variable will always be 0 in the following situations:

 * The shader is written for the Built-In Render Pipeline. * When baking lightmaps or light probes.

 **Note**: The value is not serialized, so it is not saved to the asset and resets when the object is reloaded.

 Additional resources: TilemapRenderer.GetShaderUserValue.

 The following code sample creates a MonoBehaviour to assign a specific color value on a renderer by encoding it in a `uint`.

```csharp
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Tilemaps;
using UnityEngine.U2D;[ExecuteAlways]
public class PerRendererColor : MonoBehaviour
{
    public Color color = Color.white;    private TilemapRenderer m_Renderer;    void Start()
    {
        m_Renderer = GetComponent<TilemapRenderer>();
    }    void Update()
    {
        if (m_Renderer)
        {
            Color32 colorb = color;
            uint packedColor = (uint)colorb.r | ((uint)colorb.g << 8) | ((uint)colorb.b << 16);
            m_Renderer.SetShaderUserValue(packedColor);
        }
    }
}
```

The corresponding shader code unpacks the unsigned integer into an RGB float triplet in the fragment shader.

```csharp
// This shader fills the Tilemap shape with the color packed in the renderer's user value.
Shader "Example/URPUnlitUserValue"
{
    Properties
    { }    SubShader
    {
        Tags { "RenderType" = "Opaque" "RenderPipeline" = "UniversalPipeline" }        Pass
        {
            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"            struct Attributes
            {
                float4 positionOS   : POSITION;
            };            struct Varyings
            {
                float4 positionHCS  : SV_POSITION;
            };            Varyings vert(Attributes IN)
            {
                Varyings OUT;
                OUT.positionHCS = TransformObjectToHClip(IN.positionOS.xyz);
                return OUT;
            }            half4 frag() : SV_Target
            {
                // Decoding the user value color and returning it.
                uint3 c = uint3(unity_RendererUserValue & 0xFF, (unity_RendererUserValue >> 8) & 0xFF, (unity_RendererUserValue >> 16) & 0xFF);
                return half4(half3(c) / 255.0f, 1.0f);
            }
            ENDHLSL
        }
    }
}
```
