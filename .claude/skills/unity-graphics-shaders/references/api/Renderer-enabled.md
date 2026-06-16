<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Renderer-enabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Makes the rendered 3D object visible if enabled.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Renderer rend;    void Start()
    {
        rend = GetComponent<Renderer>();
        rend.enabled = true;
    }    // Toggle the Object's visibility each second.
    void Update()
    {
        // Find out whether current second is odd or even
        bool oddeven = Mathf.FloorToInt(Time.time) % 2 == 0;        // Enable renderer accordingly
        rend.enabled = oddeven;
    }
}
```
