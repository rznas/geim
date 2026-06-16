<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialEditor.TextureCompatibilityWarning.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| prop | The texture property to check and display warning for, if necessary. |

### Description

Checks if particular property has incorrect type of texture specified by the material, displays appropriate warning and suggests the user to automatically fix the problem.

The warning box is shown using GUILayout so it is recommended to call this method right after the property.
