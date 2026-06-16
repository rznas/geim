<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.IsPowerOfTwo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true if the value is power of two.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // prints false
        Debug.Log(Mathf.IsPowerOfTwo(7));        // prints true
        Debug.Log(Mathf.IsPowerOfTwo(32));
    }
}
```
