<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/built-in-shader-examples-reflections.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Reflections shader example in the Built-In Render Pipeline

When a Skybox is used in the **scene** as a reflection source (see Lighting window), then essentially a “default” Reflection Probe is created, containing the skybox data. A reflection probe is internally a Cubemap texture; we will extend the world-space normals **shader** above to look into it.

The code is starting to get a bit involved by now. Of course, if you want shaders that automatically work with lights, shadows, reflections and the rest of the lighting system, it’s way easier to use surface shaders. This example is intended to show you how to use parts of the lighting system in a “manual” way.

```
Shader "Unlit/SkyReflection"
{
    SubShader
    {
        Pass
        {
            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            struct v2f {
                half3 worldRefl : TEXCOORD0;
                float4 pos : SV_POSITION;
            };

            v2f vert (float4 vertex : POSITION, float3 normal : NORMAL)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(vertex);
                // compute world space position of the vertex
                float3 worldPos = mul(_Object2World, vertex).xyz;
                // compute world space view direction
                float3 worldViewDir = normalize(UnityWorldSpaceViewDir(worldPos));
                // world space normal
                float3 worldNormal = UnityObjectToWorldNormal(normal);
                // world space reflection vector
                o.worldRefl = reflect(-worldViewDir, worldNormal);
                return o;
            }
        
            half4 frag (v2f i) : SV_Target
            {
                // sample the default reflection cubemap, using the reflection vector
                half4 skyData = UNITY_SAMPLE_TEXCUBE(unity_SpecCube0, i.worldRefl);
                // decode cubemap data into actual color
                half3 skyColor = DecodeHDR (skyData, unity_SpecCube0_HDR);
                // output it!
                half4 c = 0;
                c.rgb = skyColor;
                return c;
            }
            ENDHLSL
        }
    }
}
```

The example above uses several things from the built-in shader include files:

- **unity_SpecCube0**, **unity_SpecCube0_HDR**, **Object2World**, **UNITY_MATRIX_MVP** from the built-in shader variables. **unity_SpecCube0** contains data for the active reflection probe.
- **UNITY_SAMPLE_TEXCUBE** is a built-in macro to sample a cubemap. Most regular cubemaps are declared and used using standard HLSL syntax (**samplerCUBE** and **texCUBE**), however the reflection probe cubemaps in Unity are declared in a special way to save on sampler slots. If you don’t know what that is, don’t worry, just know that in order to use **unity_SpecCube0** cubemap you have to use **UNITY_SAMPLE_TEXCUBE** macro.
- **UnityWorldSpaceViewDir** function from **UnityCG.cginc**, and **DecodeHDR** function from the same file. The latter is used to get actual color from the reflection probe data – since Unity stores reflection probe cubemap in specially encoded way.
- **reflect** is just a built-in HLSL function to compute vector reflection around a given normal.
