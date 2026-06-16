<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LineRenderer-numCapVertices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set this to a value greater than 0, to get rounded corners on each end of the line. The default is 0.

The value controls how many vertices are added to each end, where a higher value will give a smoother result.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(LineRenderer))]
public class ExampleClass : MonoBehaviour
{
    public int numCapVertices = 0;
    public int numCornerVertices = 0;
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
        lr.numCapVertices = numCapVertices;
        lr.numCornerVertices = numCornerVertices;
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 20, 200, 30), "Num Cap Vertices");
        numCapVertices = (int)GUI.HorizontalSlider(new Rect(165, 25, 200, 30), (float)numCapVertices, 0.0f, 20.0f);        GUI.Label(new Rect(25, 60, 200, 30), "Num Corner Vertices");
        numCornerVertices = (int)GUI.HorizontalSlider(new Rect(165, 65, 200, 30), (float)numCornerVertices, 0.0f, 20.0f);
    }
}
```
