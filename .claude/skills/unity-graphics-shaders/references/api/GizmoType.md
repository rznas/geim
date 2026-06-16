<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GizmoType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines how a gizmo is drawn or picked in the Unity editor.

The types can be combined together with an OR operator.

Additional resources: DrawGizmo.

### Properties

| Property | Description |
| --- | --- |
| Pickable | The gizmo can be picked in the editor. |
| NotInSelectionHierarchy | Draw the gizmo if it is not selected and also no parent/ancestor is selected. |
| NonSelected | Draw the gizmo if it is not selected. |
| Selected | Draw the gizmo if it is selected. |
| Active | Draw the gizmo if it is active (shown in the inspector). |
| InSelectionHierarchy | Draw the gizmo if it is selected or it is a child/descendent of the selected. |
