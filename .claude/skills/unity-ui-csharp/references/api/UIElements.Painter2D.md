<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.Painter2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Object to draw 2D vector graphics.

The example below demonstrates how to use the Painter2D class to draw content in a VisualElement with the VisualElement.generateVisualContent callback.

 You can also create a standalone Painter2D.Painter2D object to draw content offscreen, and use the Painter2D.SaveToVectorImage method to save the painter content in a VectorImage asset.

```csharp
using UnityEngine;
 using UnityEngine.UIElements; [RequireComponent(typeof(UIDocument))]
 public class Painter2DExample : MonoBehaviour
 {
     public void OnEnable()
     {
         var doc = GetComponent<UIDocument>();
         doc.rootVisualElement.generateVisualContent += Draw;
     }     void Draw(MeshGenerationContext ctx)
     {
         var painter = ctx.painter2D;
         painter.lineWidth = 10.0f;
         painter.lineCap = LineCap.Round;
         painter.strokeGradient = new Gradient() {
             colorKeys = new GradientColorKey[] {
                 new GradientColorKey() { color = Color.red, time = 0.0f },
                 new GradientColorKey() { color = Color.blue, time = 1.0f }
             }
         };
         painter.BeginPath();
         painter.MoveTo(new Vector2(10, 10));
         painter.BezierCurveTo(new Vector2(100, 100), new Vector2(200, 0), new Vector2(300, 100));
         painter.Stroke();
     }
 }
```

### Properties

| Property | Description |
| --- | --- |
| dashOffset | The offset to the first dash to use when drawing paths using Stroke. |
| fillColor | The color used for fill paths when using Fill. |
| fillGradient | The fill gradient to use when using. Fill. |
| fillTexture | Texture2D to use when filling paths using Fill. |
| lineCap | The cap to use when drawing paths using Stroke. |
| lineJoin | The join to use when drawing paths using Stroke. |
| lineWidth | The line width of draw paths when using Stroke. |
| miterLimit | When using LineJoin.Miter joins, this defines the limit on the ratio of the miter length to the stroke width before converting the miter to a bevel. |
| strokeColor | The color of draw paths when using Stroke. |
| strokeFillGradient | The stroke fill gradient to use when using. Stroke. |
| strokeGradient | The stroke gradient to use when using Stroke. |

### Constructors

| Constructor | Description |
| --- | --- |
| Painter2D | Initializes an instance of Painter2D. |

### Public Methods

| Method | Description |
| --- | --- |
| Arc | Adds an arc to the current sub-path to the provided position, radius and angles. |
| ArcTo | Adds an arc to the current sub-path to the provided position using a control point. |
| BeginPath | Begins a new path and empties the list of recorded sub-paths. |
| BezierCurveTo | Adds a cubic bezier curve to the current sub-path to the provided position using two control points. |
| Clear | When created as a detached painter, clears the current content. Does nothing otherwise. |
| ClosePath | Closes the current sub-path with a straight line. If the sub-path is already closed, this does nothing. |
| Dispose | Dispose the Painter2D object and free its internal unmanaged resources. |
| Fill | Fills the currently defined path. |
| GetDashPattern | Copies the current dash pattern into the provided span. |
| LineTo | Adds a straight line to the current sub-path to the provided position. |
| MoveTo | Begins a new sub-path at the provied coordinate. |
| PopClip | Removes the most recently added clipping region. |
| PushClip | Uses the current path as a clipping region. This region clips subsequent Fill() and Stroke() operations. |
| QuadraticCurveTo | Adds a quadratic bezier curve to the current sub-path to the provided position using a control point. |
| SaveToVectorImage | Saves the content of this Painter2D to a VectorImage object. |
| SetDashPattern | Sets the dash pattern to use when drawing paths using Stroke. Use GetDashPattern to retrieve the current pattern. |
| Stroke | Strokes the currently defined path. |
