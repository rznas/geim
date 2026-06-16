<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Projector-aspectRatio.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The aspect ratio of the projection.

This is projection width divided by height. An aspect ratio of 1.0 makes the projection square; a ratio of 2.0 makes it twice as wide than high. Additional resources: projector component.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Get the projector
        Projector proj = GetComponent<Projector>();
        // Use it
        proj.aspectRatio = 2.0f;
    }
}
```
