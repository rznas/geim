<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/xr-graphics.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# XR graphics

Graphics and rendering in an **XR** app follow the same principles as they do in any Unity application, with some differences arising from the need for stereo rendering and increased efficiency.

XR apps generally require very high and consistent frame rates for user comfort. At the same time, rendering in stereo means that every visible object must be drawn twice from different perspectives. Techniques like single-pass rendering can improve rendering efficiency by reducing the duplication of effort, but also require changes to **shader** code.

| Topic | Description |
| --- | --- |
| Universal Render Pipeline compatibility in XR | Understand which Universal **Render Pipeline** features are compatible with XR platforms. |
| Stereo rendering | Understand stereo rendering for XR platforms. |
| Foveated rendering | Learn about foveated rendering for XR. |
| Multiview Render Regions | Understand the Multiview Render Regions feature for XR devices. |
| VR frame timing | Learn about **VR** frame timing. |
| Optimize for untethered XR devices in URP | Understand the ways you can optimize your URP project for XR devices. |
| Resolution control in XR projects | Understand how to control the resolution in your untethered XR project. |
| Tile-based rendering in XR | Understand on-tile rendering in XR. |
| On-tile post-processing (URP) | Learn about on-tile **post-processing** for untethered XR devices. |
