<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Light-renderMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls how often the light's contribution is calculated during rendering.

The render mode of a light determines how Unity calculates and applies lighting to objects in the Scene. Depending on the selected mode, lighting is evaluated either per pixel or per vertex. Unity provides three render modes: LightRenderMode.Auto, LightRenderMode.ForceVertex, and LightRenderMode.ForcePixel.

- LightRenderMode.Auto: Unity automatically selects the best lighting evaluation mode based on performance and quality considerations.
- LightRenderMode.ForceVertex: Forces lighting to be calculated per vertex. This mode is faster and uses fewer resources but might result in less smooth lighting unless the geometry is highly tessellated.
- LightRenderMode.ForcePixel: Forces lighting to be calculated per pixel, offering the highest visual fidelity. Pixel lighting is required for certain effects, such as bumpmapping and specular highlights. However, it requires more rendering time and is slower compared to vertex lighting.

Lighting render modes allow developers to balance visual quality and performance based on the requirements of their project. Pixel lighting provides high-quality results for advanced effects and is compatible with pipelines like HDRP, which exclusively support pixel lighting. Conversely, vertex lighting is useful in performance-critical scenarios, such as mobile or VR applications.

Choose LightRenderMode.Auto in most cases, as Unity automatically determines the optimal mode for the platform and current rendering pipeline. Use LightRenderMode.ForcePixel in high-fidelity applications where effects such as bumpmapping or specular highlights are necessary. Choose LightRenderMode.ForceVertex for scenes targeting low-power devices or where performance is the priority.
