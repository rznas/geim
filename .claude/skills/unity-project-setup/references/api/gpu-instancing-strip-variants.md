<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/gpu-instancing-strip-variants.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Prevent Unity stripping GPU instancing shaders in the Built-In Render Pipeline

Unity generates Surface **shaders** with instancing variants by default, unless you specify `noinstancing` in the `#pragma` directive. Unity ignores uses of #pragma multi_compile_instancing in a **surface shader**.

Unity’s Standard and StandardSpecular shaders have instancing support by default, but with no per-instance properties other than the transform.

If your **scene** contains no **GameObjects** with GPU instancing enabled, then Unity strips instancing shader variants. To override the stripping behaviour:

1. Open Project Settings (menu: **Edit** > **Project Settings**).
2. Go to **Graphics**.
3. In the **Shader Stripping** section, set **Instancing Variants** to **Keep All**.
