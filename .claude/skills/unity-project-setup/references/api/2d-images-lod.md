<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/2d-images-lod.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# 2D images for low level of detail (LOD)

Techniques and resources for using 2D **billboards** to simplify 3D meshes that are far away.

| **Topic:** | **Description:** |
| --- | --- |
| Applying 2D billboards for low LOD meshes | Understand how Unity uses Billboard Renderers and Billboard assets to create a 2D billboard for low-LOD rendering. |
| Billboard Renderer component reference | Explore the properties in the Billboard Renderer to to customize how Unity renders billboards and their interaction with lighting. |
| Billboard asset reference | Explore the properties in the Billboard asset. |

## Render pipeline information

How you work with billboards depends on the **render pipeline** you use.

| **Feature name** | **Universal Render Pipeline (URP)** | **High Definition Render Pipeline (HDRP)** | **Built-in Render Pipeline** |
| --- | --- | --- | --- |
| **Billboard Renderer component** | Yes. | Yes.  Only with VFX Graph. | Yes. |
