<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3-operator_eq.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true if two vectors are approximately equal.

To allow for floating point inaccuracies, the two vectors are considered equal if the magnitude of their difference is less than 1e-5.

Additional resources: Equals

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Transform other;    void Example()
    {
        if (other && transform.position == other.position)
        {
            print("I'm at the same place as the other transform!");
        }
    }
}
```
