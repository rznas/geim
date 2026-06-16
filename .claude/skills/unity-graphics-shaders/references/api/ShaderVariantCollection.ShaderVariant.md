<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderVariantCollection.ShaderVariant.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Identifies a specific variant of a shader.

In Unity, many shaders internally have multiple "variants", to account for different light modes, lightmaps, shadows and so on. These variants are indentified by a shader pass type, and a set of shader keywords. See ShaderVariantCollection.

Note that creating a ShaderVariant will throw an ArgumentException if shader is null, pass type does not exist or variant with the passed keywords is not found.

### Properties

| Property | Description |
| --- | --- |
| keywords | Array of shader keywords to use in this variant. |
| passType | Pass type to use in this variant. |
| shader | Shader to use in this variant. |

### Constructors

| Constructor | Description |
| --- | --- |
| ShaderVariantCollection.ShaderVariant | Creates a ShaderVariant structure. |
