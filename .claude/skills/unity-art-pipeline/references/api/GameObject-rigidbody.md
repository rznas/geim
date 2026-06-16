<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject-rigidbody.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Rigidbody attached to this GameObject (Read Only). (Null if there is none attached).

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        gameObject.GetComponent<Rigidbody>().AddForce(0, 0, 1);
    }
}
```
