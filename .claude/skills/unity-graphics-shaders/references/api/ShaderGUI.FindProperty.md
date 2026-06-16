<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShaderGUI.FindProperty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| propertyName | The name of the material property. |
| properties | The array of available material properties. |
| propertyIsMandatory | If true then this method will throw an exception if a property with propertyName was not found. |

### Returns

**MaterialProperty** The material property found, otherwise null.

### Description

Find shader properties.

This is a utility method that finds a MaterialProperty by name.
