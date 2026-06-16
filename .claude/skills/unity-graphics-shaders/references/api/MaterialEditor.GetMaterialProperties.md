<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialEditor.GetMaterialProperties.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mats | The selected materials. |

### Returns

**MaterialProperty[]** Returns the material properties.

### Description

Get shader property information of the materials you pass in.

When implementing custom MaterialEditors, you'd usually pass the `this.targets` array to this function, where `this.targets` is all the selected materials.

Additional resources: MaterialProperty.
