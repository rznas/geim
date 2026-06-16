<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/overlays-reference-debug-mode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Debug Mode options overlay reference

The Debug Draw Mode overlay has the following options that help you understand your graphics and lighting better. These controls only affect the ****Scene**** view during development and have no effect on the built game.

To open the Debug Mode options overlay, select the Debug Mode icon in the Draw Modes overlay. For more information, refer to Draw Modes overlay reference.

| **Debug Mode option** | **Description** |
| --- | --- |
| **Lighting** | **Contributors / Receivers** — Show the lightmap contributors and receivers for the selected GameObject.  **Shadow Cascades** — Show directional light shadow cascades. |
| **Realtime **Global Illumination**** | Visualize aspects of the Enlighten Realtime Global Illumination system. Refer to GI Visualisations for information about each of these modes. |
| **Baked Global Illumination** | Visualize aspects of the Baked Global Illumination system. For more information about each of these modes, refer to GI Visualisations. |
| **Deferred** | View each of the elements of the G-buffer in isolation. For more information, refer to Deferred Shading. |
| **Miscellaneous** | **Render Paths** — Show the rendering path for each GameObject using a color code: Blue indicates deferred shading  Yellow indicates forward rendering Red indicates vertex lit     **Alpha Channel** — Render colors with alpha.  **Overdraw** — Render GameObjects as transparent “silhouettes”. The transparent colors accumulate, making it easy to spot places where one object is drawn over another.  **Mipmaps** — Show ideal texture sizes using a color code: Red indicates that the texture is larger than necessary (at the current distance and resolution) Blue indicates that the texture might be larger. The ideal texture sizes depend on the resolution at which your application will run and how close the Camera can get to particular surfaces.    **Texture Mipmap Streaming** — Tint GameObjects green, red, or blue, depending on their status in the Texture Mipmap Streaming system. For more information, see documentation on Analyze mipmap streaming.  **Sprite Mask** — Sprite Masks are used to either hide or reveal parts of a Sprite or group of Sprites. For more information, refer to Sprite Masks. |
| **Validate Albedo** and **Validate Metal Sepcular** | Check whether your physically-based materials use values within the recommended ranges. For more information, refer to Physically Based Material Validator. |

## Additional resources

- Overlays
- Display or hide an overlay
- Create and manage overlay presets
- Layers
