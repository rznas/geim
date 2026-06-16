<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Projector-farClipPlane.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The far clipping plane distance.

The projector will not affect anything that is further than this distance. Additional resources: projector component.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Get the projector
        Projector proj = GetComponent<Projector>();
        // Use it
        proj.farClipPlane = 20.0f;
    }
}
```
