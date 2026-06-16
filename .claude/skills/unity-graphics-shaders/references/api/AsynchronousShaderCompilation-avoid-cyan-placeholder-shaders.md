<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/AsynchronousShaderCompilation-avoid-cyan-placeholder-shaders.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Troubleshooting asynchronous shader compilation

Advanced rendering solutions rely on generating data once and reusing it in later frames. If the Editor uses a placeholder **shader** during this process, it might pollute the generated data. If this happens, you can see the cyan color or other rendering artifacts in your **scene**, even after the shader variants have finished compiling.

To avoid this, you can Disable asynchronous shader compilation.

## Customize compile time rendering

You can make your custom tools draw something other than the placeholder shader for each material. This way, you can avoid rendering in plain cyan, and instead draw something else while the shader variant compiles.

To check if a specific shader variant has compiled, see Detecting asynchronous shader compilation.

To trigger compilation manually, you can use `ShaderUtil.CompilePass`. This way, you can avoid rendering with the cyan placeholder, and draw something else while the shader variant compiles.
