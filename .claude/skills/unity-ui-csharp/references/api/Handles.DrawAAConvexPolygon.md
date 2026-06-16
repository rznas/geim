<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.DrawAAConvexPolygon.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| points | List of points describing the convex polygon. |

### Description

Draw anti-aliased convex polygon specified with point array.

```csharp
using UnityEditor;
using UnityEngine;

public class ArrowDrawer : MonoBehaviour
{
    public void DrawArrow(Color color, float arrowThickness, float lineThickness, float shorten, Vector3 start, Vector3 end)
    {
        var length = (end - start).magnitude;
        if (length < 0.001f)
            return;

        var forward = (end - start) / length;
        var right = Vector3.Cross(Vector3.up, forward).normalized;

        var width = arrowThickness * 0.5f;
        var height = arrowThickness * 0.7f;

        start += forward * shorten;
        end -= forward * shorten;

        var arrowHead = new Vector3[3]
        {
            end,
            end - forward * height + right * width,
            end - forward * height - right * width
        };

        var arrowLine = new Vector3[2]
        {
            start,
            end - forward * height
        };

        Handles.color = color;
        Handles.DrawAAPolyLine(lineThickness, 2, arrowLine);
        Handles.DrawAAConvexPolygon(arrowHead);
    }

    void OnDrawGizmos()
    {
        DrawArrow(Color.white, 1f, 3f, 0f, transform.position, transform.position + transform.TransformDirection(Vector3.forward) * 4f);
    }
}
```
