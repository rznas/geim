<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DrawGizmo-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gizmo | Flags to denote when the gizmo should be drawn. |

### Description

Defines when the gizmo should be invoked for drawing.

Additional resources: GizmoType, DrawGizmo.

```csharp
using UnityEngine;
using UnityEditor;// Draw an image above the light when the light is not selected
// The icon has to be stored in Assets/Gizmospublic class ExampleScript : MonoBehaviour
{
    // Draw an image above the light when the light is not selected
    [DrawGizmo(GizmoType.NotInSelectionHierarchy | GizmoType.Pickable)]
    static void drawGizmo1(Light light, GizmoType gizmoType)
    {
        Vector3 position = light.transform.position;        Gizmos.DrawIcon(position + Vector3.up, "ninja.jpg");
    }    // Place a red sphere around a selected light.
    // Surround the sphere dark shaded when not selected.
    [DrawGizmo(GizmoType.Selected | GizmoType.NonSelected)]
    static void drawGizmo2(Light light, GizmoType gizmoType)
    {
        Vector3 position = light.transform.position;        if ((gizmoType & GizmoType.Selected) != 0)
        {
            Gizmos.color = Color.red;
        }
        else
        {
            Gizmos.color = Color.red * 0.5f;
        }
        Gizmos.DrawSphere(position , 1);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| gizmo | Flags to denote when the gizmo should be drawn. |
| drawnGizmoType | Type of object for which the gizmo should be drawn. |

### Description

Same as above. `drawnGizmoType` determines of what type the object we are drawing the gizmo of has to be.

If drawnGizmoType is null, the type will be determined from the first parameter of the draw gizmo method. If drawnGizmoType is not null, it must be the same type as, or a subtype of, the type of the first parameter.
