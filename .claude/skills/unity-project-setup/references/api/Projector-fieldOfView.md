<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Projector-fieldOfView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The field of view of the projection in degrees.

This is the vertical field of view; horizontal FOV varies depending on the aspectRatio. Field of view is ignored when projector is orthographic (see orthographic). Additional resources: projector component.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Get the projector
        Projector proj = GetComponent<Projector>();
        // Use it
        proj.fieldOfView = 80.0f;
    }
}
```
