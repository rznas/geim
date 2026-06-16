<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.DrawBezier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| startPosition | The start point of the bezier line. |
| endPosition | The end point of the bezier line. |
| startTangent | The start tangent of the bezier line. |
| endTangent | The end tangent of the bezier line. |
| color | The color to use for the bezier line. |
| texture | The texture to use for drawing the bezier line. |
| width | The width of the bezier line. |

### Description

Draw textured bezier line through start and end points with the given tangents.

To get an anti-aliased effect use a texture that is 1x2 pixels with one transparent white pixel and one opaque white pixel. The bezier curve will be swept using this texture.

**Note:** Use HandleUtility.GetHandleSize where you might want to have constant screen-sized handles.


 *Bezier Line in the Scene View.*

```csharp
using UnityEditor;
using UnityEngine;[CustomEditor(typeof(BezierExample))]
public class DrawBezierExample : Editor
{
    void OnSceneGUI()
    {
        BezierExample be = target as BezierExample;        be.startPoint = Handles.PositionHandle(be.startPoint, Quaternion.identity);
        be.endPoint = Handles.PositionHandle(be.endPoint, Quaternion.identity);
        be.startTangent = Handles.PositionHandle(be.startTangent, Quaternion.identity);
        be.endTangent = Handles.PositionHandle(be.endTangent, Quaternion.identity);        // Visualize the tangent lines
        Handles.DrawDottedLine(be.startPoint, be.startTangent, 5);
        Handles.DrawDottedLine(be.endPoint, be.endTangent, 5);        Handles.DrawBezier(be.startPoint, be.endPoint, be.startTangent, be.endTangent, Color.red, null, 5f);
    }
}
```

And the script attached to this Handle:

```csharp
using UnityEngine;public class BezierExample : MonoBehaviour
{
    public Vector3 startPoint = new Vector3(-5f, 2f, 0f);
    public Vector3 endPoint = new Vector3(5f, -2f, 0f);
    public Vector3 startTangent = new Vector3(0f, 2f, 0f);
    public Vector3 endTangent = new Vector3(0f, -2f, 0f);
}
```
