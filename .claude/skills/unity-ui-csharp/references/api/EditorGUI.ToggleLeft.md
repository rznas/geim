<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.ToggleLeft.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the toggle. |
| label | Label to display next to the toggle. |
| value | The value to edit. |
| labelStyle | Optional GUIStyle to use for the label. |

### Returns

**bool** The value set by the user.

### Description

Makes a toggle field where the toggle is to the left and the label immediately to the right of it.

EditorGUI.ToggleLeft is similar to GUI.Toggle but respects the EditorGUI.showMixedValue property and handles keyboard focus consistent with other Editor controls.
