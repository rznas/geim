<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Deg2Rad.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Degrees-to-radians conversion constant (Read Only).

This is equal to *(PI * 2) / 360*.

Additional resources: Rad2Deg constant.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public float deg = 30.0F;    void Start()
    {
        float rad = deg * Mathf.Deg2Rad;
        Debug.Log(deg + " degrees are equal to " + rad + " radians.");
    }
}
```
