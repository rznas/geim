<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/visual-effects-haloes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Light halos

Strategies for creating glowing halos around light sources, to give the impression of small dust **particles** in the air, and add atmosphere to your **scene**.

| **Topic** | **Description** |
| --- | --- |
| Create and configure a halo light effect | Create and customize a halo around a light source. |
| Halo component reference | Explore the properties for the Halo component to customize the appearance of a halo. |

## Render pipeline information

How you work with light halos depends on the **render pipeline** you use.

| **Feature name** | **Universal Render Pipeline (URP)** | **High Definition Render Pipeline (HDRP)** | **Built-in Render Pipeline** |
| --- | --- | --- | --- |
| **Halos** | Yes  Use a Lens Flare (SRP) Data Asset and a Lens Flare (SRP) component. | Yes  Use a Lens Flare (SRP) Data Asset and a Lens Flare (SRP) component, or a Screen Space Lens Flare override. | Yes  Use a Halo component. |
