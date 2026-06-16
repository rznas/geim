<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Projector-nearClipPlane.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The near clipping plane distance.

The projector will not affect anything that is nearer than this distance. Additional resources: projector component.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Projector proj = GetComponent<Projector>();
        proj.nearClipPlane = 0.5f;
    }
}
```
