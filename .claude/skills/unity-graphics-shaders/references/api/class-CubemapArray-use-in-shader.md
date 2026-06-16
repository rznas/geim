<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-CubemapArray-use-in-shader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Sample a cubemap array in a shader

Here is an example of a **shader** that uses a **cubemap** array.

```
Shader "CubemapArrayShaderExample" {
Properties {
    _MainTex ("CubemapArray", CubeArray) = "" {}
    _Mip ("Mip", Float) = 0.0
    _Intensity ("Intensity", Float) = 1.0
    _SliceIndex ("Slice", Int) = 0
    _Exposure ("Exposure", Float) = 0.0
}

SubShader {
    Tags {"Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent" "ForceSupported" = "True"}

    Pass {

        HLSLPROGRAM
        #pragma vertex vert
            #pragma fragment frag
            #pragma require sampleLOD
            #pragma require cubearray
            #include "UnityCG.cginc"
    
    
    
            struct appdata {
                float4 pos : POSITION;
                float3 nor : NORMAL;
            };
    
            struct v2f {
                float3 uv : TEXCOORD0;
                float4 pos : SV_POSITION;
            };
    
            uniform int _SliceIndex;
            float _Mip;
            half _Alpha;
            half _Intensity;
            float _Exposure;
    
           v2f vert (appdata v) {
                v2f o;
                o.pos = UnityObjectToClipPos(v.pos);
                float3 viewDir = -normalize(ObjSpaceViewDir(v.pos));
                o.uv = reflect(viewDir, v.nor);
                return o;
            }
    
            half4 _MainTex_HDR;
            UNITY_DECLARE_TEXCUBEARRAY(_MainTex);
            half4 frag (v2f i) : COLOR0
            {
                half4 c = UNITY_SAMPLE_TEXCUBEARRAY(_MainTex, float4(i.uv, _SliceIndex));
                half4 cmip = UNITY_SAMPLE_TEXCUBEARRAY_LOD(_MainTex, float4(i.uv, _SliceIndex), _Mip);
                if (_Mip >= 0.0)
                    c = cmip;
                c.rgb = DecodeHDR (c, _MainTex_HDR) * _Intensity;
                c.rgb *= exp2(_Exposure);
                c = lerp (c, c.aaaa, _Alpha);
                return c;
            }
            ENDHLSL
        }
    }
    Fallback Off
}
```

If you use this shader with the Cubemap Array created in the example on the Create a cubemap array page, the result looks like this:
