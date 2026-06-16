<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/shader-TransparentFamily.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Transparent Shader Family overview

**Note.** Unity 5 introduced the Standard Shader which replaces these **shaders**.

The Transparent shaders are used for fully- or semi-transparent objects. Using the alpha channel of the **Base** texture, you can determine areas of the object which can be more or less transparent than others. This can create a great effect for glass, HUD interfaces, or sci-fi effects.

## Transparent Vertex-Lit

**Assets needed:**

- One **Base** texture with alpha channel for Transparency Map

» More details

## Transparent Diffuse

**Assets needed:**

- One **Base** texture with alpha channel for Transparency Map

» More details

## Transparent Specular

**Assets needed:**

- One **Base** texture with alpha channel for combined Transparency Map/Specular Map

**Note:** One limitation of this shader is that the **Base** texture’s alpha channel doubles as a Specular Map for the Specular shaders in this family.

» More details

## Transparent Normal mapped

**Assets needed:**

- One **Base** texture with alpha channel for Transparency Map
- One **Normal map** normal map, no alpha channel required

» More details

## Transparent Normal mapped Specular

**Assets needed:**

- One **Base** texture with alpha channel for combined Transparency Map/Specular Map
- One **Normal map** normal map, no alpha channel required

**Note:** One limitation of this shader is that the **Base** texture’s alpha channel doubles as a Specular Map for the Specular shaders in this family.

» More details

## Transparent Parallax

**Assets needed:**

- One **Base** texture with alpha channel for Transparency Map
- One **Normal map** normal map with alpha channel for Parallax Depth

» More details

## Transparent Parallax Specular

**Assets needed:**

- One **Base** texture with alpha channel for combined Transparency Map/Specular Map
- One **Normal map** normal map with alpha channel for Parallax Depth

**Note:** One limitation of this shader is that the **Base** texture’s alpha channel doubles as a Specular Map for the Specular shaders in this family.

» More details

TransparentFamily
