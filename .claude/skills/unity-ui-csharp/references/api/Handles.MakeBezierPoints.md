<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Handles.MakeBezierPoints.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Retuns an array of points to representing the bezier curve.

The `division` argument provides the number of lines used to make the bezier curve.

Additional resources: Handles.DrawBezier.

```csharp
using UnityEngine;
using UnityEditor;// Generates 20 points that define the bezier curve[CustomEditor(typeof(DrawBezier))]
public class DrawBezierExample : Editor
{
    private Vector3[] points;    private void OnSceneGUI()
    {
        points = Handles.MakeBezierPoints(
            new Vector3(1.0f,  0.0f,   0.0f),
            new Vector3(-1.0f,  0.0f,   0.0f),
            new Vector3(-1.0f,  0.75f,  0.75f),
            new Vector3(1.0f, -0.75f, -0.75f),
            20);        Handles.DrawAAPolyLine(points);
    }
}
```

This is the second script:

```csharp
using UnityEngine;// The class called by the DrawBezierExamplepublic class DrawBezier : MonoBehaviour
{
    // no script needed, just the class
}
```
