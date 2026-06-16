<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.DrawSolidArc.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| center | The center of the circle. |
| normal | The normal of the circle. |
| from | The direction of the point on the circumference, relative to the center, where the sector begins. |
| angle | The angle of the sector, in degrees. |
| radius | The radius of the circle  **Note:** Use HandleUtility.GetHandleSize where you might want to have constant screen-sized handles. |

### Description

Draw a circular sector (pie piece) in 3D space.

*Solid Arc in the Scene View.*

```csharp
using UnityEditor;
using UnityEngine;static class ArcExample
{
    static Vector3 m_Angle = new Vector3(1.5f, .66f, 0f);    // Create an arc at 0, 0, 0 in the Scene view and a slider that changes thes angle of the arc.
    [InitializeOnLoadMethod]
    static void Init() => SceneView.duringSceneGui += view =>
    {
        Handles.DrawLine(new Vector3(1.5f, 0f, 0f), new Vector3(1.5f, 1f, 0f));
        var handleSize = HandleUtility.GetHandleSize(m_Angle) * .1f;
        m_Angle = Handles.Slider(m_Angle, Vector3.up, handleSize, Handles.DotHandleCap, EditorSnapSettings.move.x);
        m_Angle.y = Mathf.Clamp(m_Angle.y, 0f, 1f);
        Handles.Label(m_Angle + Vector3.right * handleSize * 2f, $"Angle {m_Angle.y * 360f}");        Handles.DrawSolidArc(Vector3.zero, Vector3.forward, Vector3.up, m_Angle.y * -360f, 1f);
    };
}
```
