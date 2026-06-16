<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gizmos.DrawLineStrip.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| points | The points that define the sequence of lines to draw. The function draws a line between each point and the one that follows it. |
| looped | Whether to draw an additional line between the last point and the first. When this is `true`, Unity draws an additional line between `points[points.Length - 1]` and `points[0]`. When this is `false`, the lines terminate at the last point. |

### Description

Draws a line between each point in the supplied span.

This function provides a more efficient way to draw multiple lines than repeatedly calling the Gizmos.DrawLine function for each one.

Unity draws the first line from `points[0]` to `points[1]`, the next from `points[1]` to `points[2]`, and so on.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    Vector3[] points;    void Start()
    {
        points = new Vector3[4]
        {
            new Vector3(-100, 0, 0),
            new Vector3(100, 0, 0),
            new Vector3(100, 100, 0),
            new Vector3(-100, 100, 0)
        };
    }    void OnDrawGizmosSelected()
    {
        // Draws four lines making a square
        Gizmos.color = Color.blue;
        Gizmos.DrawLineStrip(points, true);
    }
}
```

Additional resources: Gizmos.DrawLine, Gizmos.DrawLineList.
