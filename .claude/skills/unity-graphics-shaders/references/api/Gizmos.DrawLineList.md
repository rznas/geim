<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gizmos.DrawLineList.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| points | Pairs of points to use as the beginning and end of each line to draw. Unity throws an exception if `points` contains an odd number of elements. |

### Description

Draws multiple lines between pairs of points.

This function provides a more efficient way to draw multiple lines than repeatedly calling the Gizmos.DrawLine function for each one.

Each pair of points from the `points` span represents the start and end of each line, so the Editor draws the first line from `points[0]` to `points[1]`, the next from `points[2]` to `points[3]`, and so on. The method requires the span to have an even number of points, if not it throws an exception.

This method is versatile and can be used to visualize connections, paths, or boundaries in your scene. 

The lines are drawn using the current Gizmos color, which can be set using Gizmos.color before calling `DrawLineList`. The lines are drawn using the current Gizmos matrix, which can be set using Gizmos.matrix before calling `DrawLineList`.

Typically, you'd use this method within MonoBehaviour.OnDrawGizmos or MonoBehaviour.OnDrawGizmosSelected functions in your MonoBehaviour scripts, or within a method with the DrawGizmo attribute. Like all Gizmos, it's an editor-only tool and should not be used for game functionality. This method has no effect in the Game view or at runtime. If you want to draw similar shapes at runtime see Debug.DrawLine.

The lines respect the 3D space and perspective of the scene, including depth and occlusion by other objects. They also respect the alpha channel of the Gizmos color, allowing for semi-transparent lines as well as the transformation of Gizmos.matrix.

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
            new Vector3(-100, 100, 0),
            new Vector3(100, 100, 0)
        };
    }    void OnDrawGizmosSelected()
    {
        // Draws two parallel blue lines
        Gizmos.color = Color.blue;
        Gizmos.DrawLineList(points);
    }
}
```

Additional resources: Gizmos.DrawLine, Gizmos.DrawLineStrip, MonoBehaviour.OnDrawGizmos, MonoBehaviour.OnDrawGizmosSelected, DrawGizmo, Gizmos.color, Gizmos.matrix.
