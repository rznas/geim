<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CharacterController-radius.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The radius of the character's capsule.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Set the controller radius to 0.3f
    CharacterController controller;    void Start()
    {
        controller = GetComponent<CharacterController>();
        controller.radius = 0.3f;
    }
}
```
