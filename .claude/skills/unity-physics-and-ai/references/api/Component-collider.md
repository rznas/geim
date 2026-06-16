<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Component-collider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Collider attached to this GameObject. (Null if there is none attached).

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        GetComponent<Collider>().material.dynamicFriction = 1;
    }
}
```
