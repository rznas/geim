<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CharacterController-center.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The center of the character's capsule relative to the transform's position.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    CharacterController controller;
    private void Start()
    {
        controller = GetComponent<CharacterController>();
        controller.center = new Vector3(0, 1, 0);
    }
}
```
