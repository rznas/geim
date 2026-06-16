<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ShaderPropertyFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Flags that control how a shader property behaves.

When the Unity Editor compiles a ShaderLab script, it assigns shader property flags to its shader properties based on the attributes you assign to those properties. For example, if you add the "[HideInInspector]" attribute to a shader property declaration, Unity sets the HideInInspector flag when it compiles the script. If you add more than one attribute to a property, the Editor combines the flags using a bitwise OR operation.

### Properties

| Property | Description |
| --- | --- |
| None | No flags are set. |
| HideInInspector | Signifies that Unity hides the property in the default Material Inspector. |
| PerRendererData | In the Material Inspector, Unity queries the value for this property from the Renderer's MaterialPropertyBlock, instead of from the Material. The value will also appear as read-only. |
| NoScaleOffset | Do not show UV scale/offset fields next to Textures in the default Material Inspector. |
| Normal | Signifies that values of this property contain Normal (normalized vector) data. |
| HDR | Signifies that values of this property contain High Dynamic Range (HDR) data. |
| Gamma | Signifies that values of this property are in gamma space. If the active color space is linear, Unity converts the values to linear space values. |
| NonModifiableTextureData | You cannot edit this Texture property in the default Material Inspector. |
| MainTexture | Signifies that value of this property contains the main texture of the Material. |
| MainColor | Signifies that value of this property contains the main color of the Material. |
| Vector2 | Signifies that this property should be treated like a Vector2 in the default Material Inspector. |
| Vector3 | Signifies that this property should be treated like a Vector3 in the default Material Inspector. |
