<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/shader-built-in.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Prebuilt shaders render pipeline compatibility reference

| ****Shaders**** | **Universal **Render Pipeline** (URP)** | **High Definition Render Pipeline (HDRP)** | **Custom SRP** | **Built-in Render Pipeline** |
| --- | --- | --- | --- | --- |
| **URP shaders** | Yes | No | No | No |
| **HDRP shaders** | No | Yes | No | No |
| **Standard Shader** | No  Can convert Standard Shader to equivalent on import | No  Can convert Standard Shader to equivalent on import | No | Yes |
| **Standard Particle Shaders** | No | No | No | Yes |
| **Legacy shaders** | Yes  Simple unlit Legacy shaders will likely render fine, but they might not be SRP Batcher compatible. | Yes  Simple unlit Legacy shaders will likely render fine, but they might not be SRP Batcher compatible. They also do not support any HDRP features. For an unlit shader that supports HDRP features, use the HDRP/Unlit shader. | Yes  Simple unlit Legacy shaders will likely render fine, but they might not be SRP Batcher compatible. | Yes |
