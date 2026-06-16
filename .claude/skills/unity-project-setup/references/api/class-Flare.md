<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-Flare.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Flare asset reference

Explore the properties in the Flare asset to create and configure a Flare.

| **Property** | **Function** |
| --- | --- |
| **Elements** | The number of Flare images included in the Flare. |
| **Image Index** | Which Flare image to use from the **Flare Texture** for this Element. |
| **Position** | The Element’s offset along a line running from the containing **GameObject**’s position through the screen center. 0 = GameObject position, 1 = screen center. |
| **Size** | The size of the element. |
| **Color** | Color tint of the element. |
| **Use Light Color** | If the Flare is attached to a Light, enabling this will tint the Flare with the Light’s color. |
| **Rotate** | If enabled, bottom of the Element will always face the center of the screen, making the Element spin as the **Lens Flare** moves around on the screen. |
| **Zoom** | If enabled, the Element will scale up when it becomes visible and scale down again when it isn’t. |
| **Fade** | If enabled, the Element will fade in to full strength when it becomes visible and fade out when it isn’t. |
| **Flare Texture** | A texture containing images used by this Flare’s **Elements**. It must be arranged according to one of the **TextureLayout** options. |
| **Texture Layout** | How the individual Flare Element images are laid out inside the **Flare Texture** (see Configuring Flare Elements: Understand texture layouts for further details). |
| **Use Fog** | If enabled, the Flare will fade away with distance fog. This is used commonly for small Flares. |
