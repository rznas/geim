<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/shader-ReflectiveFamily.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Reflective Shader Family overview

**Note.** Unity 5 introduced the Standard Shader which replaces these **shaders**.

**Reflective** shaders will allow you to use a **Cubemap** which will be reflected on your **mesh**. You can also define areas of more or less reflectivity on your object through the alpha channel of the **Base** texture. High reflectivity is a great effect for glosses, oils, chrome, etc. Low reflectivity can add effect for metals, liquid surfaces, or video monitors.

## Reflective Vertex-Lit

**Assets needed:**

- One **Base** texture with alpha channel for defining reflective areas
- One **Reflection** Cubemap for Reflection Map

» More details

## Reflective Diffuse

**Assets needed:**

- One **Base** texture with alpha channel for defining reflective areas
- One **Reflection** Cubemap for Reflection Map

» More details

## Reflective Specular

**Assets needed:**

- One **Base** texture with alpha channel for defining reflective areas & Specular Map combined
- One **Reflection** Cubemap for Reflection Map

**Note:** One consideration for this shader is that the **Base** texture’s alpha channel will double as both the reflective areas and the Specular Map.

» More details

## Reflective Normal mapped

**Assets needed:**

- One **Base** texture with alpha channel for defining reflective areas
- One **Reflection** Cubemap for Reflection Map
- One **Normal map**, no alpha channel required

» More details

## Reflective Normal Mapped Specular

**Assets needed:**

- One **Base** texture with alpha channel for defining reflective areas & Specular Map combined
- One **Reflection** Cubemap for Reflection Map
- One **Normal map**, no alpha channel required

**Note:** One consideration for this shader is that the **Base** texture’s alpha channel will double as both the reflective areas and the Specular Map.

» More details

## Reflective Parallax

**Assets needed:**

- One **Base** texture with alpha channel for defining reflective areas
- One **Reflection** Cubemap for Reflection Map
- One **Normal map**, with alpha channel for Parallax Depth

» More details

## Reflective Parallax Specular

**Assets needed:**

- One **Base** texture with alpha channel for defining reflective areas & Specular Map
- One **Reflection** Cubemap for Reflection Map
- One **Normal map**, with alpha channel for Parallax Depth

**Note:** One consideration for this shader is that the **Base** texture’s alpha channel will double as both the reflective areas and the Specular Map.

» More details

## Reflective Normal mapped Unlit

**Assets needed:**

- One **Base** texture with alpha channel for defining reflective areas
- One **Reflection** Cubemap for Reflection Map
- One **Normal map**, no alpha channel required

» More details

## Reflective Normal mapped Vertex-Lit

**Assets needed:**

- One **Base** texture with alpha channel for defining reflective areas
- One **Reflection** Cubemap for Reflection Map
- One **Normal map**, no alpha channel required

» More details

ReflectiveFamily
