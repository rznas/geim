<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.Blit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| source | The source texture. |
| dest | The destination RenderTexture or GraphicsTexture. |
| mat | The material to use. If you don't provide `mat`, Unity uses a default material. |
| pass | If the value is `-1`, Unity draws all the passes in `mat`. Otherwise, Unity draws only the pass you set `pass` to. The default value is `-1`. |
| scale | The scale to apply to the source texture. Unity uses this scale value to multiply the UVs it uses to sample the source texture. |
| offset | The offset to apply to the source texture. Unity adds this offset value to the UVs before sampling the source texture. The offset is independent from the scale as Unity adds the offset only after it applies the scale. |
| sourceDepthSlice | The element in the source texture to copy from, for example the texture in a texture array. You can't use `sourceDepthSlice` to specify a face in a Cubemap. |
| destDepthSlice | The element in the destination texture to copy from, for example the texture in a texture array. You can't use `destDepthSlice` to specify a face in a Cubemap. |

### Description

Uses a shader to copy the pixel data from a texture into a render target.

This method copies pixel data from a texture on the GPU to a render texture or graphics texture on the GPU. This is one of the fastest ways to copy a texture.

When you use `Graphics.Blit`, Unity does the following:

1. Sets the active render target to the `dest` texture. (See RenderTexture.active and GraphicsTexture.active.)
2. Passes `source` to the `mat` material as the `_MainTex` property.
3. Uses the material's shader to draw a full-screen surface from the `source` texture to the `dest` texture.

If you provide a `mat` material that doesn't have a `_MainTex` property, `Blit` doesn't use `source`. If you provide a GraphicsTexture as `dest`, it must have GraphicsTextureDescriptorFlags.RenderTarget enabled in its GraphicsTextureDescriptor.flags.

You can use `Graphics.Blit` to create post-processing effects, by setting `mat` to a material with a custom shader.

`Blit` changes RenderTexture.active and GraphicsTexture.active. Store the active render target before you use `Blit` if you need to use it afterwards.

Avoid setting `source` and `dest` to the same texture, as this may cause undefined behaviour. Use Custom Render Textures with double buffering instead, or use two render textures and alternate between them to implement double buffering manually.

In linear color space, set GL.sRGBWrite before using `Blit`, to make sure the sRGB-to-linear color conversion is what you expect.

To blit to the screen in the Built-in Render Pipeline, follow these steps:

1. Set `dest` to `null`. Unity now uses `Camera.main.targetTexture` as the destination texture.
2. Set the Camera.targetTexture property of Camera.main to `null`.

To blit to the screen in the Universal Render Pipeline (URP) or the High Definition Render Pipeline (HDRP), you must call Graphics.Blit or CommandBuffer.Blit inside a method that you call from the RenderPipelineManager.endContextRendering callback.

If you want to use a depth or stencil buffer that is part of the `source` (Render)texture, or blit to a subregion of a texture, you have to manually write an equivalent of the Graphics.Blit function - i.e. Graphics.SetRenderTarget with destination color buffer and source depth buffer, setup orthographic projection (GL.LoadOrtho), setup material pass (Material.SetPass) and draw a quad (GL.Begin).

Additional resources: Graphics.BlitMultiTap, Post-processing effects.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{ 
    Texture aTexture;
    RenderTexture rTex;    void Start()
    {
        if (!aTexture || !rTex)
        {
            Debug.LogError("A texture or a render texture are missing, assign them.");
        }
    }    void Update()
    {
        Graphics.Blit(aTexture, rTex);
    }
}
```

Copies aTexture to rTex and displays it in all cameras.

```csharp
using UnityEngine;public class Fisheye : MonoBehaviour
{
    public Texture sourceTexture;
    public RenderTexture targetRenderTexture;
    public Material fishEyeMaterial;    void Update()
    {
        // Apply the fish-eye effect every frame
        Graphics.Blit(sourceTexture, targetRenderTexture, fishEyeMaterial);
    }
}
```

Execute a Blit from the source texture to the destination using a custom blit shader assigned to the `fishEyeMaterial` field.

```csharp
Shader "Custom/FishEyeShader"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        _Distortion ("Distortion Strength", Range(0, 1)) = 0.5
    }
    SubShader
    {
        Pass
        {
            ZTest Always
            Cull Off
            ZWrite Off            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag            sampler2D _MainTex;
            float _Distortion;            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };            struct v2f
            {
                float4 pos : SV_POSITION;
                float2 uv : TEXCOORD0;
            };            v2f vert(appdata v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.uv = v.uv;
                return o;
            }            float4 frag(v2f i) : COLOR
            {
                float2 uv = i.uv;
                float2 center = float2(0.5, 0.5); // Center of the texture                // Fisheye distortion
                float2 diff = uv - center;
                float dist = length(diff);
                diff *= pow(_Distortion, dist);                uv = center + diff; // Apply distortion
                return tex2D(_MainTex, uv);
            }
            ENDCG
        }
    }
}
```

Shader code used for the fish eye effect.
