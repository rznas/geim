<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LineRenderer-widthMultiplier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set an overall multiplier that is applied to the LineRenderer.widthCurve to get the final width of the line.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(LineRenderer))]
public class ExampleClass : MonoBehaviour
{
    public float width = 1.0f;
    public bool useCurve = true;
    private LineRenderer lr;    void Start()
    {
        lr = GetComponent<LineRenderer>();
        lr.material = new Material(Shader.Find("Sprites/Default"));        // Set some positions
        Vector3[] positions = new Vector3[3];
        positions[0] = new Vector3(-2.0f, -2.0f, 0.0f);
        positions[1] = new Vector3(0.0f, 2.0f, 0.0f);
        positions[2] = new Vector3(2.0f, -2.0f, 0.0f);
        lr.positionCount = positions.Length;
        lr.SetPositions(positions);
    }    void Update()
    {
        AnimationCurve curve = new AnimationCurve();
        if (useCurve)
        {
            curve.AddKey(0.0f, 0.0f);
            curve.AddKey(1.0f, 1.0f);
        }
        else
        {
            curve.AddKey(0.0f, 1.0f);
            curve.AddKey(1.0f, 1.0f);
        }        lr.widthCurve = curve;
        lr.widthMultiplier = width;
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 20, 200, 30), "Width");
        width = GUI.HorizontalSlider(new Rect(125, 25, 200, 30), width, 0.1f, 1.0f);
        useCurve = GUI.Toggle(new Rect(25, 65, 200, 30), useCurve, "Use Curve");
    }
}
```
