<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/built-in-shader-examples-diffuse-lighting-with-ambient-light.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Ambient light shader example in the Built-In Render Pipeline

The example above does not take any ambient lighting or light probes into account. Let’s fix this! It turns out we can do this by adding just a single line of code. Both ambient and light probe data is passed to **shaders** in Spherical Harmonics form, and **ShadeSH9** function from **UnityCG.cginc** include file does all the work of evaluating it, given a world space normal.

```
Shader "Lit/Diffuse With Ambient"
{
    Properties
    {
        [NoScaleOffset] _MainTex ("Texture", 2D) = "white" {}
    }
    SubShader
    {
        Pass
        {
            Tags {"LightMode"="ForwardBase"}
        
            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "UnityLightingCommon.cginc"

            struct v2f
            {
                float2 uv : TEXCOORD0;
                half4 diff : COLOR0;
                float4 vertex : SV_POSITION;
            };

            v2f vert (appdata_base v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = v.texcoord;
                half3 worldNormal = UnityObjectToWorldNormal(v.normal);
                half nl = max(0, dot(worldNormal, _WorldSpaceLightPos0.xyz));
                o.diff = nl * _LightColor0;

                // the only difference from previous shader:
                // in addition to the diffuse lighting from the main light,
                // add illumination from ambient or light probes
                // ShadeSH9 function from UnityCG.cginc evaluates it,
                // using world space normal
                o.diff.rgb += ShadeSH9(half4(worldNormal,1));
                return o;
            }
            
            sampler2D _MainTex;

            half4 frag (v2f i) : SV_Target
            {
                half4 col = tex2D(_MainTex, i.uv);
                col *= i.diff;
                return col;
            }
            ENDHLSL
        }
    }
}
```

This shader is in fact starting to look very similar to the built-in Legacy Diffuse shader!
