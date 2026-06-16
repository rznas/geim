<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialProperty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes information and value of a single shader property.

MaterialProperty is used with the MaterialEditor when writing custom material editors, or implementing custom MaterialPropertyDrawer classes.

Additional resources: MaterialEditor, MaterialPropertyDrawer.

### Properties

| Property | Description |
| --- | --- |
| colorValue | Color value of the property. |
| displayName | Display name of the property (Read Only). |
| floatValue | Float value of the property. |
| hasMixedValue | Does this property have multiple different values? (Read Only) |
| intValue | Int value of the property. |
| name | Name of the property (Read Only). |
| propertyFlags | Flags that control how the Inspector window displays the property. |
| propertyType | The type of the property. |
| rangeLimits | Min/max limits of a ranged float property (Read Only). |
| targets | Material objects being edited by this property (Read Only). |
| textureDimension | Texture dimension (2D, Cubemap etc.) of the property (Read Only). |
| textureValue | Texture value of the property. |
| vectorValue | Vector value of the property. |
