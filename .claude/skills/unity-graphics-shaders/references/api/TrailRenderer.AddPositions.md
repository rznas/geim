<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TrailRenderer.AddPositions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| positions | The positions to add to the trail. |

### Description

Add an array of positions to the trail.

All points inside a TrailRenderer store a timestamp when they are born. This, together with the TrailRenderer.time property, is used to determine when they will be removed. For trails to disappear smoothly, each position must have a unique, increasing timestamp. When positions are supplied from script and the current time is identical for multiple points, position timestamps are adjusted to interpolate smoothly between the timestamp of the newest existing point in the trail and the current time.

```csharp
using UnityEngine;
using System.Collections;
using System.Collections.Generic;[RequireComponent(typeof(TrailRenderer))]
public class ExampleClass : MonoBehaviour
{
    public int numExtraPositions = 0;
    public float speed = 20.0f;
    public float radius = 4.0f;    private TrailRenderer tr;    void Start()
    {
        tr = GetComponent<TrailRenderer>();
        tr.material = new Material(Shader.Find("Sprites/Default"));
        tr.time = 0.2f;
        tr.widthMultiplier = 0.3f;
    }    void Update()
    {
        float time = Time.time;
        tr.transform.position = CalculatePosition(time);        if (numExtraPositions > 0)
        {
            float prevTime = time - Time.deltaTime;
            List<Vector3> extraPositions = new List<Vector3>(numExtraPositions);            for (int i = 0; i < numExtraPositions; i++)
            {
                float percentage = (float)(i + 1) / (numExtraPositions + 1);
                float blendedTime = Mathf.LerpUnclamped(prevTime, time, percentage);
                extraPositions.Add(CalculatePosition(blendedTime));
            }            tr.AddPositions(extraPositions.ToArray());
        }
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 20, 200, 30), "Extra Positions");
        numExtraPositions = (int)GUI.HorizontalSlider(new Rect(165, 25, 200, 30), (float)numExtraPositions, 0, 5);
    }    private Vector3 CalculatePosition(float time)
    {
        return new Vector3(Mathf.Sin(time * speed) * radius, Mathf.Cos(time * speed) * radius, 0.0f);
    }
}
```
