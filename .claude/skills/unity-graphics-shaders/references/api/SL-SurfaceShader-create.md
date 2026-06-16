<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/SL-SurfaceShader-create.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Create a surface shader in the Built-In Render Pipeline

Follow these steps:

1. Add a `CGPROGRAM` block to the `SubShader` block in your **shader** code, not the `Pass` block. Unity automatically creates multiple passes when it compiles the **surface shader**.
2. Add a `#pragma surface [surfaceFunction] [lightModel]` directive.

Surface shaders aren’t compatible with `HLSLPROGRAM` blocks, but you can use HLSL inside a `CGPROGRAM` block. For more information, refer to Shader code blocks in ShaderLab reference.

## Example

```
Shader "Example/Diffuse Simple" {
  SubShader {
    Tags { "RenderType" = "Opaque" }

    CGPROGRAM

    #pragma surface surf Lambert

    struct Input {
        float4 color : COLOR;
    };

    void surf (Input IN, inout SurfaceOutput o) {
        o.Albedo = 1;
    }

    ENDCG
  }
  Fallback "Diffuse"
}
```

Here’s how it looks like on a model with two Lights set up:
