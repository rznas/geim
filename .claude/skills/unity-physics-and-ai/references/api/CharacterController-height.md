<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CharacterController-height.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The height of the character's capsule.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Set the controller height to 2.0
    CharacterController controller;    void Start()
    {
        controller = GetComponent<CharacterController>();
        controller.height = 2.0f;
    }
}
```
