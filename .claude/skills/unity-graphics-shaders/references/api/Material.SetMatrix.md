<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.SetMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | Property name ID, use Shader.PropertyToID to get it. |
| name | Property name, e.g. "_CubemapRotation". |
| value | Matrix value to set. |

### Description

Sets a named matrix for the shader.

This is mostly used with custom shaders that need extra matrix parameters. Matrix parameters are not exposed in the material inspector, but can be set and queried with `SetMatrix` and `GetMatrix` from scripts.

Additional resources: GetMatrix, Materials, ShaderLab documentation, Shader.PropertyToID, Properties in Shader Programs.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    // Attach to an object that has a Renderer component,
    // and use material with the shader below.
    public float rotateSpeed = 30f;
    public void Update()
    {
        // Construct a rotation matrix and set it for the shader
        Quaternion rot = Quaternion.Euler(0, 0, Time.time * rotateSpeed);
        Matrix4x4 m = Matrix4x4.TRS(Vector3.zero, rot, Vector3.one);
        GetComponent<Renderer>().material.SetMatrix("_TextureRotation", m);
    }
}
```

```csharp
// Use this shader on an object together with the above example script.
// The shader transforms texture coordinates with a matrix set from a script.
Shader "RotatingTexture"
{
    Properties
    {
        _MainTex ("Base (RGB)", 2D) = "white" {}
    }
    SubShader
    {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag            struct v2f
            {
                float2 uv : TEXCOORD0;
                float4 pos : SV_POSITION;
            };            float4x4 _TextureRotation;            v2f vert (float4 pos : POSITION, float2 uv : TEXCOORD0)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(pos);
                o.uv = mul(_TextureRotation, float4(uv,0,1)).xy;
                return o;
            }            sampler2D _MainTex;
            fixed4 frag (v2f i) : SV_Target
            {
                return tex2D(_MainTex, i.uv);
            }
            ENDCG
        }
    }
}
```
