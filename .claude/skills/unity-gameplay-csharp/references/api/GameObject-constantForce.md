<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject-constantForce.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The ConstantForce attached to this GameObject (Read Only). (Null if there is none attached).

Obsolete. Use GetComponent<ConstantForce>() instead.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        GetComponent<ConstantForce>().relativeForce = new Vector3(0, 0, 1);
    }
}
```
