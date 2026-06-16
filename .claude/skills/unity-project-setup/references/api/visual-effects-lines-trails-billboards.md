<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/visual-effects-lines-trails-billboards.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Lines and trails

Unity uses specialized components to configure and render lines, trails, and **billboards**.

| **Topic** | **Description** |
| --- | --- |
| Rendering lines | Techniques for rendering individual lines in 3D space, and applying materials to those lines. |
| Rendering trails | Techniques for rendering trails that appear behind moving **GameObjects**, and applying materials to those trails. |

## Render pipeline information

How you work with lines and trails depends on the **render pipeline** you use.

| **Feature name** | **Universal Render Pipeline (URP)** | **High Definition Render Pipeline (HDRP)** | **Built-in Render Pipeline** |
| --- | --- | --- | --- |
| ****Line Renderer** component** | Yes. | Yes. | Yes. |
| **Trail Renderer component** | Yes.  You can also use VFX Graph to create a custom trail effect. | Yes.  You can also use VFX Graph to create a custom trail effect. | Yes. |

## Additional resources

- 2D images for low level of detail (LOD)
