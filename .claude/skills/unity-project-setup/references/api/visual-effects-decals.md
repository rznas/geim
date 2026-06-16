<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/visual-effects-decals.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Decals

Resources and techniques for projecting materials to act as decals that decorate the surface of other materials.

| **Topic** | **Description** |
| --- | --- |
| Introduction to decals and projection | Understand what decals are, how Unity uses projection to create them, and what you could use projection for. |
| Decals in the Universal Render Pipeline | Techniques for using a Decal Renderer Feature or a Decal Projector in the Universal **Render Pipeline** (URP). |
| Decals in the Built-In Render Pipeline | Techniques for using a Projector component in the Built-In Render Pipeline. |

## Render pipeline information

How you work with decals and projectors depends on the render pipeline you use.

| **Feature name** | **Built-in Render Pipeline** | **Universal Render Pipeline (URP)** | **High Definition Render Pipeline (HDRP)** |
| --- | --- | --- | --- |
| **Decal and projectors** | Yes  Use the Projector component. | Yes  Use the Decal Renderer Feature. | Yes  Use the Decal Projector. |
