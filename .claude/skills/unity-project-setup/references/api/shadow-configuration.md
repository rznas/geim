<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/shadow-configuration.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Enable shadows

Each Light in a **scene** can cast the following types of shadows:

- Real-time shadows. Unity stores the shadows cast from each Light in shadow map textures. The textures update each frame; shadows move when the lights move.
- Baked shadows. The Unity lightmapper stores the shadows received by each **GameObject** in static **lightmap** textures, shadow mask textures, or **Light Probes**. Shadows don’t move when the lights move.

To configure which type of shadows a Light casts, use the **Inspector** window of the Light component. For more information, refer to the following:

- Setting a light as real-time or baked.
- Lighting Mode, if you set the ****Light Mode**** of a Light to Mixed.

## Set a GameObject to receive shadows

GameObjects receive real-time shadows by default.

To set a static GameObject so it receives shadows from baked shadows, follow these steps:

1. Select the GameObject.
2. In the Inspector window, in the Mesh Renderer component, enable **Contribute **Global Illumination****.
3. Set **Receive Global Illumination** to **Lightmaps**.

## Set a GameObject to shadow other GameObjects

Follow these steps:

1. Select the GameObject.
2. In the Mesh Renderer component of the Inspector window, set **Cast shadows** to **On**.

## Configure shadows

To configure shadows for your whole project or a specific scene, refer to the following:

- Lighting window reference
- Graphics settings
- Universal Render Pipeline (URP) asset reference
- Universal Renderer asset

## Additional resources

- Shadows in URP
- Shadows in the High Definition Render Pipeline (HDRP)
- Use shadows in a custom URP shader
