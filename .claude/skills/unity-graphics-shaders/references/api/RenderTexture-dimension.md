<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture-dimension.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Dimensionality (type) of the render texture.

By default render textures are "2D" type, but it is also possible to have Cubemap or 3D render textures by changing dimension before they are created.

Cubemap render textures are most often used for dynamic cubemap reflections, see Camera.RenderToCubemap. A cubemap render texture must have the same width and height, and must be power of two size.

3D (volumetric) render textures currently only work on compute shader capable platforms (like UsingDX11GL3Features). You can render into them using "random access writes" from a pixel shader or a compute shader. Use volumeDepth to set 3D depth, and enableRandomWrite to enable arbitrary writes into it.

Additional resources: TextureDimension.
