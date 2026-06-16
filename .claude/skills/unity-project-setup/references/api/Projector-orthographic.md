<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Projector-orthographic.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is the projection orthographic (*true*) or perspective (*false*)?

When orthographic is *true*, projection is defined by orthographicSize.
 When orthographic is *false*, projection is defined by fieldOfView. Additional resources: projector component.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Projector proj = GetComponent<Projector>();
        proj.orthographic = true;
    }
}
```
