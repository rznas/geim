<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CharacterController-slopeLimit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The character controllers slope limit in degrees.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Set the controller slope limit to 45 degrees
    CharacterController controller;    void Start()
    {
        controller = GetComponent<CharacterController>();
        controller.slopeLimit = 45.0f;
    }
}
```
