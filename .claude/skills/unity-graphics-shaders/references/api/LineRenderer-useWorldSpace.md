<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LineRenderer-useWorldSpace.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If enabled, the lines are defined in world space.

This means the object's position is ignored, and the lines are rendered around world origin.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Creates a line renderer at the origin with 2 colors.    void Start()
    {
        LineRenderer lineRenderer;
        lineRenderer = gameObject.AddComponent<LineRenderer>();
        lineRenderer.useWorldSpace = false;
        lineRenderer.material = new Material(Shader.Find("Sprites/Default"));
        lineRenderer.SetColors(Color.red, Color.yellow);
    }
}
```
