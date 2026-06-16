<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemRenderer.SetActiveTrailVertexStreams.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| streams | The new array of enabled vertex streams. |

### Description

Enables a set of Vertex Shader streams on the ParticleSystemRenderer for particle trails.

Additional resources: ParticleSystemRenderer.GetActiveTrailVertexStreams.

```csharp
using UnityEngine;
using UnityEditor;
using System.Collections.Generic;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour {    private ParticleSystem ps;
    private ParticleSystemRenderer psr;
    private List<Vector4> customData = new List<Vector4>();
    public float minDist = 30.0f;    void Start() {        ps = GetComponent<ParticleSystem>();
        psr = GetComponent<ParticleSystemRenderer>();        // emit in a sphere with no speed
        var main = ps.main;
        main.startSpeedMultiplier = 0.0f;
        main.simulationSpace = ParticleSystemSimulationSpace.World; // so our particle positions don't require any extra transformation, to compare with the mouse position
        var emission = ps.emission;
        emission.rateOverTimeMultiplier = 200.0f;
        var shape = ps.shape;
        shape.shapeType = ParticleSystemShapeType.Sphere;
        shape.radius = 4.0f;
        psr.sortMode = ParticleSystemSortMode.YoungestInFront;
        var trails = ps.trails;
        trails.enabled = true;
        trails.mode = ParticleSystemTrailMode.Ribbon;        // send custom data to the shader
        psr.SetActiveTrailVertexStreams(new List<ParticleSystemVertexStream>(new ParticleSystemVertexStream[] { ParticleSystemVertexStream.Position, ParticleSystemVertexStream.Color, ParticleSystemVertexStream.UV, ParticleSystemVertexStream.Custom1X }));
    }    void Update() {        Camera mainCam = Camera.main;        ps.GetCustomParticleData(customData, ParticleSystemCustomData.Custom1);        // If you know the particle count, or have a reasonable maxParticles threshold, consider caching
        // this array instead of reallocating it on every frame, to avoid per-frame garbage.
        int particleCount = ps.particleCount;
        ParticleSystem.Particle[] particles = new ParticleSystem.Particle[particleCount];        ps.GetParticles(particles);        for (int i = 0; i < particles.Length; i++)
        {
            Vector3 sPos = mainCam.WorldToScreenPoint(particles[i].position);            // set custom data to 1, if close enough to the mouse
            if (Vector2.Distance(sPos, Input.mousePosition) < minDist)
            {
                customData[i] = new Vector4(1, 0, 0, 0);
            }
            // otherwise, fade the custom data back to 0
            else
            {
                float particleLife = particles[i].remainingLifetime / ps.main.startLifetimeMultiplier;                if (customData[i].x > 0)
                {
                    float x = customData[i].x;
                    x = Mathf.Max(x - Time.deltaTime, 0.0f);
                    customData[i] = new Vector4(x, 0, 0, 0);
                }
            }
        }        ps.SetCustomParticleData(customData, ParticleSystemCustomData.Custom1);
    }    void OnGUI() {        minDist = GUI.HorizontalSlider(new Rect(25, 40, 100, 30), minDist, 0.0f, 100.0f);
    }
}
```

Here is an example of a custom Shader that you can use with the above script:

```csharp
Shader "Particles/CustomTrailVertexStream" {
Properties {
    _TintColor ("Tint Color", Color) = (0.5,0.5,0.5,0.5)
    _MainTex ("Particle Texture", 2D) = "white" {}
    _OffsetValue("Offset Value", Range(0,1)) = 0.4
}Category {
    Tags { "Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent" }
    Blend SrcAlpha OneMinusSrcAlpha
    ColorMask RGB
    Cull Off Lighting Off ZWrite Off    SubShader {
        Pass {            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_particles
            #pragma multi_compile_fog            #include "UnityCG.cginc"            sampler2D _MainTex;
            fixed4 _TintColor;
            float _OffsetValue;            struct appdata_t {
                float4 vertex : POSITION;
                fixed4 color : COLOR;
                float3 texcoordAndCustom : TEXCOORD0;
            };            struct v2f {
                float4 vertex : SV_POSITION;
                fixed4 color : COLOR;
                float2 texcoord : TEXCOORD0;
                float customData : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };            float4 _MainTex_ST;            v2f vert (appdata_t v)
            {
                v.vertex.y = lerp(v.vertex.y, v.vertex.y + _OffsetValue, v.texcoordAndCustom.z);                v2f o;
                o.vertex = mul(UNITY_MATRIX_MVP, v.vertex);                float4 offsetX = float4(-1, 1, 1, -1);
                float4 offsetY = float4(1, 1, -1, -1);                o.color = v.color;
                o.texcoord = TRANSFORM_TEX(v.texcoordAndCustom.xy,_MainTex);
                o.customData = v.texcoordAndCustom.z;
                UNITY_TRANSFER_FOG(o,o.vertex);                return o;
            }            fixed4 frag (v2f i) : SV_Target
            {
                fixed4 col = 2.0f * i.color * _TintColor * tex2D(_MainTex, i.texcoord);
                fixed4 col2 = fixed4(i.customData, 0, 0, col.a);
                fixed4 final = lerp(col, col*col2, i.customData.x);                UNITY_APPLY_FOG(i.fogCoord, final);
                return final;
            }
            ENDCG
        }
    }
}
}
```
