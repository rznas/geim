<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GizmoUtility.TryGetGizmoInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type to get GizmoInfo for. |
| info | The output argument will contain a valid GizmoInfo when this function returns true. |

### Returns

**bool** Returns true if Unity has a gizmo or icon registered for the requested type.

### Description

Get a GizmoInfo for a type if it exists.

Type must be assignable to Component.
