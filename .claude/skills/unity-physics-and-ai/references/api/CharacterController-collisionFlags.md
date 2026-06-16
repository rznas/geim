<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CharacterController-collisionFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

What part of the capsule collided with the environment during the last CharacterController.Move call.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    CharacterController controller;    void Start()
    {
        controller = GetComponent<CharacterController>();
    }    void Update()
    {
        if ((controller.collisionFlags & CollisionFlags.Above) != 0)
        {
            print("touched the ceiling");
        }
    }
}
```
