<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TrailRenderer-shadowBias.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Apply a shadow bias to prevent self-shadowing artifacts. The specified value is the proportion of the trail width at each segment.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(TrailRenderer))]
public class ExampleClass : MonoBehaviour
{
    private TrailRenderer tr;    void Start()
    {
        tr = GetComponent<TrailRenderer>();
        tr.material = new Material(Shader.Find("Standard"));
        tr.castShadows = true;
        tr.receiveShadows = true;
        tr.shadowBias = 0.3f;
    }
}
```
