<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/shader-StandardShader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to the Standard Shader in the Built-In Render Pipeline

The Unity Standard **Shader** is a built-in shader with a comprehensive set of features. It can be used to render “real-world” objects such as stone, wood, glass, plastic and metal, and supports a wide range of shader types and combinations. Its features are enabled or disabled by simply using or not using the various texture slots and parameters in the material editor.

The Standard Shader also incorporates an advanced lighting model called **Physically Based Shading**. Physically Based Shading (PBS) simulates the interactions between materials and light in a way that mimics reality. PBS has only recently become possible in real-time graphics. It works at its best in situations where lighting and materials need to exist together intuitively and realistically.

The idea behind our Physically Based Shader is to create a user-friendly way of achieving a consistent, plausible look under different lighting conditions. It models how light behaves in reality, without using multiple ad-hoc models that may or may not work. To do so, it follows principles of physics, including energy conservation (meaning that objects never reflect more light than they receive), Fresnel reflections (all surfaces become more reflective at grazing angles), and how surfaces occlude themselves (what is called Geometry Term), among others.

The Standard Shader is designed with hard surfaces in mind (also known as “architectural materials”), and can deal with most real-world materials like stone, glass, ceramics, brass, silver or rubber. It will even do a decent job with non-hard materials like skin, hair and cloth.

With the Standard Shader, a large range of shader types (such as Diffuse, Specular, Bumped Specular, Reflective) are combined into a single shader intended to be used across all material types. The benefit of this is that the same lighting calculations are used in all areas of your **scene**, which gives a realistic, consistent and believable distribution of light and shade across all models that use the shader.

The Standard Shader lighting math implementation uses the Disney model for diffuse component, [GGX model](https://www.cs.cornell.edu/~srm/publications/EGSR07-btdf.pdf) for specular, with [Smith Joint GGX visibility term](http://jcgt.org/published/0003/02/03/paper.pdf) and [Schlick Fresnel appromixation](https://en.wikipedia.org/wiki/Schlick%27s_approximation).

## Terminology

There are a number of concepts that are very useful when talking about Physically Based Shading in Unity. These include:

- **Energy conservation** - This is a physics-based concept that ensures objects never reflect more light than they receive. The more specular a material is, the less diffuse it should be; the smoother a surface is, the stronger and smaller the highlight gets.

- **High Dynamic Range (HDR)** - This refers to colours outside the usual 0–1 range. For instance, the sun can easily be ten times brighter than a blue sky. For an in-depth discussion, see the Unity Manual HDR page.

StandardShader
