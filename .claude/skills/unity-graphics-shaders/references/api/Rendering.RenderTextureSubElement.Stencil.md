<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderTextureSubElement.Stencil.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The stencil element of a RenderTexture.

Use this to access the stencil data of the underlying surface from a Render Texture and then bind it in a Shader. Before you create the RenderTexture, make sure to set the stencil format to one that the target platform supports.

To access the stencil information in a Shader, you must read it from the correct channel. The stencil data is stored in the red channel for all graphics APIs that support it except for DirectX 11, in which case it is stored in the green channel.

If the stencilFormat is set to `R8_UInt`, you need to use the function Load to read from the Texture. Otherwise, if the format is `R8_UNorm` you can use sampling.

When using MSAA RenderTextures, you need to define the Stencil Texture using the equivalent MS Texture types.

You cannot bind the stencil buffer as a RWTexture.

Below is an example Unlit shader that reads the stencil information from a RenderTexture with stencilFormat `R8_UInt` and writes it as color information on the green channel.

Additional resources: GraphicsFormat.

```csharp
Shader "Unlit/ExampleShader"
{
    Properties
    {
        _ExampleTex("Texture", 2D) = "" {}
    }
    SubShader
    {
        Tags { "RenderType" = "Opaque" }
        LOD 100        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma target 4.0            #include "UnityCG.cginc"
            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };            struct v2f
            {
                float2 uv : TEXCOORD0;
                float4 vertex : SV_POSITION;
            };
                    #if SHADER_API_D3D11
                    #define STENCIL_CHANNEL g
                    #else
                    #define STENCIL_CHANNEL r
                    #endif            Texture2D<uint2> _ExampleTex;            v2f vert(appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = v.uv;
                return o;
            }            fixed4 frag(v2f i) : SV_Target
            {
                int xRes = 1024;
                int yRes = 768;                uint stencil = _ExampleTex.Load(int3(floor(i.uv.x * xRes), floor(i.uv.y * yRes), 0)).STENCIL_CHANNEL;
                fixed4 col = float4(0.0, float(stencil) / 255.0f, 0.0, 1.0);                return col;
            }            ENDCG
        }
    }
}
```
