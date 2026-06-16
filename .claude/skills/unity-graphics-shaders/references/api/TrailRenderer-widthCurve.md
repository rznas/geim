<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TrailRenderer-widthCurve.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set the curve describing the width of the trail at various points along its length.

This property is multiplied by TrailRenderer.widthMultiplier to get the final width of the trail.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(TrailRenderer))]
public class ExampleClass : MonoBehaviour
{
    public float width = 1.0f;
    public bool useCurve = true;
    private TrailRenderer tr;    void Start()
    {
        tr = GetComponent<TrailRenderer>();
        tr.material = new Material(Shader.Find("Sprites/Default"));
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
        }        tr.widthCurve = curve;
        tr.widthMultiplier = width;
        tr.transform.position = new Vector3(Mathf.Sin(Time.time * 1.51f) * 7.0f, Mathf.Cos(Time.time * 1.27f) * 4.0f, 0.0f);
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 20, 200, 30), "Width");
        width = GUI.HorizontalSlider(new Rect(125, 25, 200, 30), width, 0.1f, 1.0f);
        useCurve = GUI.Toggle(new Rect(25, 65, 200, 30), useCurve, "Use Curve");
    }
}
```
