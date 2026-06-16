<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TrailRenderer-numCapVertices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set this to a value greater than 0, to get rounded corners on each end of the trail.

The value controls how many vertices are added to each end, where a higher value will give a smoother result.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(TrailRenderer))]
public class ExampleClass : MonoBehaviour
{
    public int numCapVertices = 0;
    public int numCornerVertices = 0;
    private TrailRenderer tr;    void Start()
    {
        tr = GetComponent<TrailRenderer>();
        tr.material = new Material(Shader.Find("Sprites/Default"));
        tr.minVertexDistance = 0.5f;
    }    void Update()
    {
        tr.numCapVertices = numCapVertices;
        tr.numCornerVertices = numCornerVertices;
        tr.transform.position = new Vector3(Mathf.Sin(Time.time * 1.51f) * 7.0f, Mathf.Cos(Time.time * 1.27f) * 4.0f, 0.0f);
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 20, 200, 30), "Num Cap Vertices");
        numCapVertices = (int)GUI.HorizontalSlider(new Rect(165, 25, 200, 30), (float)numCapVertices, 0.0f, 20.0f);        GUI.Label(new Rect(25, 60, 200, 30), "Num Corner Vertices");
        numCornerVertices = (int)GUI.HorizontalSlider(new Rect(165, 65, 200, 30), (float)numCornerVertices, 0.0f, 20.0f);
    }
}
```
