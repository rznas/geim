<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.EnumMaskPopup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the field. |
| label | Optional label in front of the field. |
| selected | The enum options the field shows. |
| style | Optional GUIStyle. |

### Returns

**Enum** The enum options that has been selected by the user.

### Description

This method is obsolete. Use EditorGUI.EnumFlagsField instead.

Makes an enum popup selection field for a bitmask.

Takes an enum with the Flags attribute as input parameter and returns the enum values selected by the user.

Additional resources:EditorGUI.EnumPopup.
