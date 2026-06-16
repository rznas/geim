<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialPropertyDrawer.Apply.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| prop | The MaterialProperty to apply values for. |

### Description

Apply extra initial values to the material.

This function is called in all property drawers when a new material is created, or a shader is changed on an existing material. This lets the property drawers apply any extra values to the materials, for example to setup shader keywords.

Note that if you change a property by assigning a value to it, Apply() is not called automatically. If you have any extra setup you need it to do, you should call it yourself.
