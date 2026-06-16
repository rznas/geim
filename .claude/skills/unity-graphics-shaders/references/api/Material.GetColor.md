<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.GetColor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| name | The name of the property. |

### Description

Get a named color value.

Many shaders use more than one color. Use GetColor to get the `propertyName` color.

Common color names used by Unity's builtin shaders: 
 `"_Color"` is the main color of a material. This can also be accessed via color property. 
 `"_SpecColor"` is the specular color of a material (used in specular/glossy/vertexlit shaders). 
 `"_EmissionColor"` is the emissive color of a material (used in vertexlit shaders). 
 `"_ReflectColor"` is the reflection color of the material (used in reflective shaders).

Additional resources: color property, SetColor, Shader.PropertyToID.
