<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.MaterialDescription.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains a set of typed properties for describing a texture input of a MaterialDescription.

### Properties

| Property | Description |
| --- | --- |
| materialName | The name of the material |

### Public Methods

| Method | Description |
| --- | --- |
| GetFloatPropertyNames | Retrieves the property names of type float for this material. |
| GetStringPropertyNames | Retrieves the property names of type string for this material. |
| GetTexturePropertyNames | Retrieves the property names of type TextureDescription for this material. |
| GetVector4PropertyNames | Retrieves the property names of type Vector4 for this material. |
| HasAnimationCurve | Checks if a material property is animated in a any AnimationClip. |
| HasAnimationCurveInClip | Checks if a material property is animated in a specific AnimationClip. |
| TryGetAnimationCurve | Retrieves the AnimationCurve for an animated material property in a specific AnimationClip. |
| TryGetProperty | Retrieves the value of a specified material property. |
