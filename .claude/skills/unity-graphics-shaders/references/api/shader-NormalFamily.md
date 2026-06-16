<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/shader-NormalFamily.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Normal Shader Family overview

**Note.** Unity 5 introduced the Standard Shader which replaces these **shaders**.

These shaders are the basic shaders in Unity. They are not specialized in any way and should be suitable for most opaque objects. They are not suitable if you want your object to be transparent, emitting light etc.

## Vertex Lit

**Assets needed:**

- One **Base** texture, no alpha channel required

## Diffuse

**Assets needed:**

- One **Base** texture, no alpha channel required

## Specular

**Assets needed:**

- One **Base** texture with alpha channel for Specular Map

## Normal mapped

**Assets needed:**

- One **Base** texture, no alpha channel required
- One **Normal map**

## Normal mapped Specular

**Assets needed:**

- One **Base** texture with alpha channel for Specular Map
- One **Normal map**

## Parallax

**Assets needed:**

- One **Base** texture, no alpha channel required
- One **Normal map**
- One **Height** texture with Parallax Depth in the alpha channel

## Parallax Specular

**Assets needed:**

- One **Base** texture with alpha channel for Specular Map
- One **Normal map**
- One **Height** texture with Parallax Depth in the alpha channel

## Decal

**Assets needed:**

- One **Base** texture, no alpha channel required
- One **Decal** texture with alpha channel for Decal transparency

## Diffuse Detail

**Assets needed:**

- One **Base** texture, no alpha channel required
- One **Detail** grayscale texture; with 50% gray being neutral color

NormalFamily
