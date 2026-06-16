<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/shader-SelfIllumFamily.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Self-Illuminated Shader Family overview

**Note.** Unity 5 introduced the Standard Shader which replaces these **shaders**.

The **Self-Illuminated** shaders will emit light only onto themselves based on an attached alpha channel. They do not require any Lights to shine on them to emit this light. Any vertex lights or **pixel** lights will simply add more light on top of the self-illumination.

This is mostly used for light emitting objects. For example, parts of the wall texture could be self-illuminated to simulate lights or displays. It can also be useful to light power-up objects that should always have consistent lighting throughout the game, regardless of the lights shining on it.

## Self-Illuminated Vertex-Lit

**Assets needed:**

- One **Base** texture, no alpha channel required
- One **Illumination** texture with alpha channel for Illumination Map

» More details

## Self-Illuminated Diffuse

**Assets needed:**

- One **Base** texture, no alpha channel required
- One **Illumination** texture with alpha channel for Illumination Map

» More details

## Self-Illuminated Specular

**Assets needed:**

- One **Base** texture with alpha channel for Specular Map
- One **Illumination** texture with alpha channel for Illumination Map

» More details

## Self-Illuminated Bumped

**Assets needed:**

- One **Base** texture, no alpha channel required
- One **Normal map** normal map with alpha channel for Illumination

» More details

## Self-Illuminated Bumped Specular

**Assets needed:**

- One **Base** texture with alpha channel for Specular Map
- One **Normal map** normal map with alpha channel for Illumination Map

» More details

## Self-Illuminated Parallax

**Assets needed:**

- One **Base** texture, no alpha channel required
- One **Normal map** normal map with alpha channel for Illumination Map & Parallax Depth combined

**Note:** One consideration of this shader is that the **Bumpmap** texture’s alpha channel doubles as a Illumination and the Parallax Depth.

» More details

## Self-Illuminated Parallax Specular

**Assets needed:**

- One **Base** texture with alpha channel for Specular Map
- One **Normal map** normal map with alpha channel for Illumination Map & Parallax Depth combined

**Note:** One consideration of this shader is that the **Bumpmap** texture’s alpha channel doubles as a Illumination and the Parallax Depth.

» More details

SelfIllumFamily
