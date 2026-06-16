<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.MeshGenerationContext-painter2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The painter object used to issue 2D drawing commands. Use this object to draw vector shapes such as lines, arcs and Bezier curves.

```csharp
// This example draws a Bezier curve using the Painter2D class.using UnityEngine;
using UnityEngine.UIElements;[RequireComponent(typeof(UIDocument))]
public class Painter2DExample : MonoBehaviour
{
    public void OnEnable()
    {
        var doc = GetComponent<UIDocument>();
        doc.rootVisualElement.generateVisualContent += Draw;
    }    void Draw(MeshGenerationContext ctx)
    {
        var painter = ctx.painter2D;
        painter.lineWidth = 10.0f;
        painter.lineCap = LineCap.Round;
        painter.strokeColor = Color.red;        painter.BeginPath();
        painter.MoveTo(new Vector2(10, 10));
        painter.BezierCurveTo(new Vector2(100, 100), new Vector2(200, 0), new Vector2(300, 100));
        painter.Stroke();
    }
}
```
