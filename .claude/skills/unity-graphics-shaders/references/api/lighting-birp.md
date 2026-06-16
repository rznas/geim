<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/lighting-birp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Lighting in the Built-In Render Pipeline

Resources and approaches for lighting in the Built-In **Render Pipeline**.

| **Page** | **Description** |
| --- | --- |
| Per-pixel and per-vertex lights in the Built-In Render Pipeline | Learn about how Unity categorizes Light components so they light objects per-pixel or per-vertex. |
| Emit light from a GameObject | Make a material emissive so that it emits light across its surface area. |
| Create cookies | Create a cookie by creating a grayscale texture, importing the texture into Unity, then converting the brightness of the texture to alpha. |
| Customize how shaders contribute lightmap data | Make **shaders** compatible with **lightmap** textures. |
| Shadows in the Built-In Render Pipeline | Set the resolution of the shadow map a Light component generates. |
| Configure a GameObject to sample more Light Probes | To make lighting more realistic, use **Light Probe** Proxy Volumes to configure a **GameObject** to sample multiple Light Probes. |
| Blend Reflection Probes | Enable Unity gradually fading between the **cubemap** textures from different **Reflection Probes**, as a reflective GameObject passes between them. |
| Optimize lighting | Avoid Unity using multiple render passes to render GameObjects, or doing too much work to render lighting. |
| Troubleshooting emissive materials not rendering | Fix issues causing emissive materials to not render as brightly as intended. |
| Light component Inspector window reference | Explore the properties and settings in the Light component **Inspector** window to customize settings specific to the Built-In Render Pipeline. |
