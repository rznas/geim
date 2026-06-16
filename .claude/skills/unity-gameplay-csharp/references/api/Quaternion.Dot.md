<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion.Dot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The dot product between two rotations.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        print(Quaternion.Dot(transform.rotation, Quaternion.identity));
    }
}
```
