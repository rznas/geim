<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GizmoInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

GizmoInfo contains information about the Scene View gizmo and icon for a component type.

See GizmoUtility for an example.

### Properties

| Property | Description |
| --- | --- |
| gizmoEnabled | Toggle gizmo visibility in the Scene View for components of this type. |
| hasGizmo | Defines whether a component type renders any gizmos in the Scene View. |
| hasIcon | Defines whether a component type renders an icon in the Scene View. |
| iconEnabled | Toggle icon visibility in the Scene View for components of this type. |
| name | The display name for the type represented by this GizmoInfo. |
| script | The MonoBehaviour script asset corresponding to the component type represented by this GizmoInfo. |
| thumb | A preview image for the component type. |

### Public Methods

| Method | Description |
| --- | --- |
| CompareTo | Returns an integer value comparing the name property of two GizmoInfo types. |
