<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/shader-TransparentCutoutFamily.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Transparent Cutout Shader Family overview

**Note.** Unity 5 introduced the Standard Shader which replaces these **shaders**.

The Transparent Cutout shaders are used for objects that have fully opaque and fully transparent parts (no partial transparency). Things like chain fences, trees, grass, etc.

## Transparent Cutout Vertex-Lit

**Assets needed:**

- One **Base** texture with alpha channel for Transparency Map

» More details

## Transparent Cutout Diffuse

**Assets needed:**

- One **Base** texture with alpha channel for Transparency Map

» More details

## Transparent Cutout Specular

**Assets needed:**

- One **Base** texture with alpha channel for combined Transparency Map/Specular Map

**Note:** One limitation of this shader is that the **Base** texture’s alpha channel doubles as a Specular Map for the Specular shaders in this family.

» More details

## Transparent Cutout Bumped

**Assets needed:**

- One **Base** texture with alpha channel for Transparency Map
- One **Normal map** normal map, no alpha channel required

» More details

## Transparent Cutout Bumped Specular

**Assets needed:**

- One **Base** texture with alpha channel for combined Transparency Map/Specular Map
- One **Normal map** normal map, no alpha channel required

**Note:** One limitation of this shader is that the **Base** texture’s alpha channel doubles as a Specular Map for the Specular shaders in this family.

» More details

TransparentCutoutFamily
