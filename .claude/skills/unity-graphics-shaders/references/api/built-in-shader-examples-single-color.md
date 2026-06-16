<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/built-in-shader-examples-single-color.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Single color shader example in the Built-In Render Pipeline

```
Shader "Unlit/SingleColor"
{
    Properties
    {
        // Color property for material inspector, default to white
        _Color ("Main Color", Color) = (1,1,1,1)
    }
    SubShader
    {
        Pass
        {
            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            
            // vertex shader
            // this time instead of using "appdata" struct, just spell inputs manually,
            // and instead of returning v2f struct, also just return a single output
            // float4 clip position
            float4 vert (float4 vertex : POSITION) : SV_POSITION
            {
                return mul(UNITY_MATRIX_MVP, vertex);
            }
            
            // color from the material
            half4 _Color;

            // pixel shader, no inputs needed
            half4 frag () : SV_Target
            {
                return _Color; // just return it
            }
            ENDHLSL
        }
    }
}
```
