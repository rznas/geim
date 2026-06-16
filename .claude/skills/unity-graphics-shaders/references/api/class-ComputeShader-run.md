<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-ComputeShader-run.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Run a compute shader

In your script, define a variable of ComputeShader type and assign a reference to the Asset. This allows you to invoke them with ComputeShader.Dispatch function. See Unity documentation on ComputeShader class for more details.

Closely related to compute **shaders** is a ComputeBuffer class, which defines arbitrary data buffer (“structured buffer” in DX11 lingo). Render Textures can also be written into from compute shaders, if they have “random access” flag set (“unordered access view” in DX11). See RenderTexture.enableRandomWrite to learn more about this.
