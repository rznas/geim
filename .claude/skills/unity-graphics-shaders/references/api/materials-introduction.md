<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/materials-introduction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to materials

To draw something in Unity, you must provide information that describes its shape, and information that describes the appearance of its surface. You use meshes to describe shapes, and materials to describe the appearance of surfaces.

Materials and **shaders** are closely linked; you always use materials with shaders.

## Render pipeline compatibility

| Feature | Universal **Render Pipeline** (URP) | High Definition Render Pipeline (HDRP) | Custom Scriptable Render Pipeline (SRP) | Built-in Render Pipeline |
| --- | --- | --- | --- | --- |
| Materials | Yes | Yes | Yes | Yes |

## Material fundamentals

A material contains a reference to a Shader object. If that Shader object defines material properties, then the material can also contain data such as colors or references to textures.

The Material class represents a material in C# code. For information, see Using Materials with C# scripts.

A material asset is a file with the `.mat` extension. It represents a material in your Unity project. For information on viewing and editing a material asset using the **Inspector** window, see Material Inspector reference.

## Material Variants

Unity supports functionality for creating variants of Materials. To learn more about this functionality, see Material Variants.
