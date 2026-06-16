<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LineRenderer-shadowBias.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Apply a shadow bias to prevent self-shadowing artifacts. The specified value is the proportion of the line width at each segment.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(LineRenderer))]
public class ExampleClass : MonoBehaviour
{
    private LineRenderer lr;    void Start()
    {
        lr = GetComponent<LineRenderer>();
        lr.material = new Material(Shader.Find("Standard"));
        lr.castShadows = true;
        lr.receiveShadows = true;
        lr.shadowBias = 0.3f;        // Set some positions
        Vector3[] positions = new Vector3[3];
        positions[0] = new Vector3(-2.0f, -2.0f, 0.0f);
        positions[1] = new Vector3(0.0f, 2.0f, 0.0f);
        positions[2] = new Vector3(2.0f, -2.0f, 0.0f);
        lr.positionCount = positions.Length;
        lr.SetPositions(positions);
    }
}
```
