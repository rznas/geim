<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialEditor.GetMaterialProperty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mats | The selected materials. |
| name | Property name. |
| propertyIndex | Property index. |

### Returns

**MaterialProperty** Returns the property at the specified index.

### Description

Get information about a single shader property.

When implementing custom MaterialEditors, you'd usually pass the `this.targets` array to this function, where `this.targets` is all the selected materials.

Additional resources: GetMaterialProperties, MaterialProperty.
