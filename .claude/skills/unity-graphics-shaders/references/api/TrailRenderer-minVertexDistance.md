<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TrailRenderer-minVertexDistance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set the minimum distance the trail can travel before a new vertex is added to it.

Smaller values with give smoother trails, consisting of more vertices, but costing more performance.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(TrailRenderer))]
public class ExampleClass : MonoBehaviour
{
    public float minVertexDistance = 0.5f;
    private TrailRenderer tr;    void Start()
    {
        tr = GetComponent<TrailRenderer>();
        tr.material = new Material(Shader.Find("Sprites/Default"));
    }    void Update()
    {
        tr.minVertexDistance = minVertexDistance;
        tr.transform.position = new Vector3(Mathf.Sin(Time.time * 1.51f) * 7.0f, Mathf.Cos(Time.time * 1.27f) * 4.0f, 0.0f);
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 20, 200, 30), "Vertex Distance");
        minVertexDistance = GUI.HorizontalSlider(new Rect(165, 25, 200, 30), minVertexDistance, 0.1f, 5.0f);
    }
}
```
