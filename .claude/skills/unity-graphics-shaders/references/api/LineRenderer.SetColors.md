<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LineRenderer.SetColors.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set the line color at the start and at the end.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Adds a lineRenderer to this transform and
    // makes the line renderer fade at the end.    Color c1 = Color.white;
    Color c2 = new Color(1, 1, 1, 0);    void Start()
    {
        LineRenderer lineRenderer = gameObject.AddComponent<LineRenderer>();
        lineRenderer.material = new Material(Shader.Find("Sprites/Default"));
        lineRenderer.SetColors(c1, c2);
    }
}
```
