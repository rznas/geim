<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cloth-damping.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Damp cloth motion.

Set this to damp the motions of a cloth instance. Must be between zero and one. Setting this to zero will disable cloth damping.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        GetComponent<Cloth>().damping = 1;
    }
}
```
