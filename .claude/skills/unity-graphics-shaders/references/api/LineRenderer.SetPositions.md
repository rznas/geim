<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LineRenderer.SetPositions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| positions | The array of positions to set. |

### Description

Set the positions of all vertices in the line.

This method is preferred to SetPosition when setting all positions, as it is more efficient to set all positions using a single command than to set each position individually. Note that positionCount must be called before SetPositions. Also SetPositions ignores points with indices beyond positionCount.

Additional resources: positionCount property, SetPosition function.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // Creates a line renderer that follows a Sin() function
    // and animates it.    public Color c1 = Color.yellow;
    public Color c2 = Color.red;
    public int lengthOfLineRenderer = 20;    LineRenderer lineRenderer;    void Start()
    {
        lineRenderer = gameObject.AddComponent<LineRenderer>();
        lineRenderer.material = new Material(Shader.Find("Sprites/Default"));
        lineRenderer.widthMultiplier = 0.2f;
        lineRenderer.positionCount = lengthOfLineRenderer;        // A simple 2 color gradient with a fixed alpha of 1.0f.
        float alpha = 1.0f;
        Gradient gradient = new Gradient();
        gradient.SetKeys(
            new GradientColorKey[] { new GradientColorKey(c1, 0.0f), new GradientColorKey(c2, 1.0f) },
            new GradientAlphaKey[] { new GradientAlphaKey(alpha, 0.0f), new GradientAlphaKey(alpha, 1.0f) }
        );
        lineRenderer.colorGradient = gradient;
    }    void Update()
    {
        LineRenderer lineRenderer = GetComponent<LineRenderer>();
        var points = new Vector3[lengthOfLineRenderer];
        var t = Time.time;
        for (int i = 0; i < lengthOfLineRenderer; i++)
        {
            points[i] = new Vector3(i * 0.5f, Mathf.Sin(i + t), 0.0f);
        }
        lineRenderer.SetPositions(points);
    }
}
```
