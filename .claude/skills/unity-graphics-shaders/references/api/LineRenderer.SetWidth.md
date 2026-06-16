<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LineRenderer.SetWidth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| start | The width at the start of the line. |
| end | The width at the end of the line. |

### Description

Set the line width at the start and at the end.

Additional resources: startWidth, endWidth or widthCurve properties.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Adds a lineRenderer to this transform and
    // Converts the line Renderer into a triangle.    void Start()
    {
        LineRenderer lineRenderer = gameObject.AddComponent<LineRenderer>();
        lineRenderer.SetWidth(0, 3);
    }
}
```
