<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LineUtility.Simplify.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| points | The points that make up the original line. |
| tolerance | This value is used to evaluate which points should be removed from the line. A higher value results in a simpler line (less points). A positive value close to zero results in a line with little to no reduction. A value of zero or less has no effect. |
| pointsToKeep | Populated by this function. Contains the indexes of the points that should be generate a simplified version.. |
| simplifiedPoints | Populated by this function. Contains the points that form the simplified line. |

### Description

Generates a simplified version of the original line by removing points that fall within the specified tolerance.

As an example, you can use this function for reducing a complex line made up of thousands of points. The line can be reduced to hundreds or even less points and still maintain a form closely matching the original. You can generate multiple versions of the same line with varying detail levels by adjusting the tolerance (higher tolerance values results in less points in the generated line). The generated line can then be displayed using the LODGroup system.

The Simplify algorithm is based on the [Ramer Douglas Peucker algorithm](https://en.wikipedia.org/wiki/Ramer-Douglas-Peucker_algorithm) ; it creates a line that closely represents the provided line but with fewer points(determined by tolerance).

**Note:** This function can handle a large number of points as it is non-recursive. The 2D version of this function performs better than this function as it uses a simpler way to evaluate the points.

Additional resources: LineRenderer.Simplify.

**The following example shows how to apply line simplification to an existing line.**

```csharp
using System.Collections.Generic;
using System.Linq;
using UnityEngine;// This example shows how to apply line simplification to a line that already contains points.
[RequireComponent(typeof(LineRenderer))]
public class SimpleExampleLineUtility : MonoBehaviour
{
    public float tolerance = 1;
    void Start()
    {
        // Get the points.
        var lineRenderer = GetComponent<LineRenderer>();
        int pointsBefore = lineRenderer.positionCount;
        var points = new Vector3[pointsBefore];
        lineRenderer.GetPositions(points);        // Simplify.
        var simplifiedPoints = new List<Vector3>();
        LineUtility.Simplify(points.ToList(), tolerance, simplifiedPoints);        // Assign back to the line renderer.
        lineRenderer.positionCount = simplifiedPoints.Count;
        lineRenderer.SetPositions(simplifiedPoints.ToArray());        Debug.Log("Line reduced from " + pointsBefore + " to " + lineRenderer.positionCount);
    }
}
```

The following example shows how the pointsToKeep parameter can be used to return a list of indices. The list can then be used to simplify a line that retains points in that list. Additional points can still be added on to the resulting simplified line.

```csharp
using System.Collections.Generic;
using System.Linq;
using UnityEngine;// This example shows how to use the pointsToKeep parameter to generate a new simplified version of the line.
[RequireComponent(typeof(LineRenderer))]
public class SimpleExampleLineUtilityPointsToKeep : MonoBehaviour
{
    public float tolerance = 1;
    void Start()
    {
        // Get the points.
        var lineRenderer = GetComponent<LineRenderer>();
        int pointsBefore = lineRenderer.positionCount;
        var points = new Vector3[pointsBefore];
        lineRenderer.GetPositions(points);        // Simplify.
        var pointsToKeep = new List<int>();
        LineUtility.Simplify(points.ToList(), tolerance, pointsToKeep);        var simplifiedPoints = new Vector3[pointsToKeep.Count];
        for (int i = 0; i < simplifiedPoints.Length; ++i)
        {
            simplifiedPoints[i] = points[pointsToKeep[i]];
        }        // Assign back to the line renderer.
        lineRenderer.positionCount = simplifiedPoints.Length;
        lineRenderer.SetPositions(simplifiedPoints);        Debug.Log("Line reduced from " + pointsBefore + " to " + lineRenderer.positionCount);
    }
}
```

This example generates a line in the shape of a sine wave and provides a GUI for customizing the line generation and simplification parameters.

```csharp
using System.Collections.Generic;
using UnityEngine;// This example creates a sine wave and then simplifies it using the LineUtility.
// The parameters can be adjusted through an in game GUI to allow for experimentation.
[RequireComponent(typeof(LineRenderer))]
public class LineUtilityExample : MonoBehaviour
{
    public int numberOfPoints = 1000;
    public float length = 50;
    public float waveHeight = 10;
    public float tolerance = 0.1f;    private LineRenderer lineRenderer;
    private List<Vector3> points = new List<Vector3>(); // Generated points before LineOptimizer is used.
    private List<Vector3> simplifiedPoints = new List<Vector3>(); // Simplified points after LineOptimizer is used.    public void Start()
    {
        lineRenderer = GetComponent<LineRenderer>();
    }    // Generates the sine wave points.
    public void GeneratePoints()
    {
        points.Clear();
        float halfWaveHeight = waveHeight * 0.5f;
        float step = length / numberOfPoints;
        for (int i = 0; i < numberOfPoints; ++i)
        {
            points.Add(new Vector3(i * step, Mathf.Sin(i * step) * halfWaveHeight, 0));
        }
    }    // Simplify the line using the LineOptimizer.
    public void SimplifyLine()
    {
        simplifiedPoints.Clear();
        LineUtility.Simplify(points, tolerance, simplifiedPoints);
        lineRenderer.positionCount = simplifiedPoints.Count;
        lineRenderer.SetPositions(simplifiedPoints.ToArray());
    }    // Draw a simple GUI slider with a label.
    private static float GUISlider(string label, float value, float min, float max)
    {
        GUILayout.BeginHorizontal(GUILayout.Width(Screen.width / 2.0f));
        GUILayout.Label(label + "(" + value + ") :", GUILayout.Width(150));
        var val = GUILayout.HorizontalSlider(value, min, max);
        GUILayout.EndHorizontal();
        return val;
    }    public void OnGUI()
    {
        GUILayout.Label("LineUtility.Simplify", GUI.skin.box);        // We use GUI.changed to detect if a value was changed via the GUI, if it has we can then re-generate the points and simplify the line again.
        GUI.changed = false;        numberOfPoints = (int)GUISlider("Number of Points", numberOfPoints, 0, 1000);
        length = GUISlider("Length", length, 0, 100);
        waveHeight = GUISlider("Wave Height", waveHeight, 0, 100);
        if (GUI.changed)
            GeneratePoints();        tolerance = GUISlider("Simplify Tolerance", tolerance, 0, 2);
        if (GUI.changed)
            SimplifyLine();        float percentRemoved = 100.0f - ((float)lineRenderer.positionCount / numberOfPoints) * 100.0f;
        if (tolerance > 0.0f)
            GUILayout.Label("Points after simplification: " + lineRenderer.positionCount + "(Removed " + percentRemoved.ToString("##.##") + "%)");
    }
}
```
