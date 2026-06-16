<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3-operator_ne.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true if vectors are different.

Very close vectors are treated as being equal.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Transform other;    void Example()
    {
        if (other && transform.position != other.position)
        {
            print("I'm at the different place than the other transform!");
        }
    }
}
```
