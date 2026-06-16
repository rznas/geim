<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/gpu-instancing-birp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# GPU Instancing in the Built-In Render Pipeline

This section contains information on how to add GPU instancing support to a custom Unity **shader**. It first explains the shader keywords, variables, and functions custom Unity shaders require to support GPU instancing. Then it includes examples of how to add per-instance data to both **surface shaders** and vertex/fragment shaders.

## Render pipeline compatibility

| **Feature** | **Universal **Render Pipeline** (URP)** | **High Definition Render Pipeline (HDRP)** | **Custom Scriptable Render Pipeline (SRP)** | **Built-in Render Pipeline** |
| --- | --- | --- | --- | --- |
| **Custom GPU instanced shaders** | No | No | No | Yes |

## Additional resources

- GPU instancing
- Graphics performance and profiling
