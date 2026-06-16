<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CollisionFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

CollisionFlags is a bitmask returned by CharacterController.Move.

It gives you a broad overview of where your character collided with any other objects.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Update()
    {
        CharacterController controller = GetComponent<CharacterController>();        if (controller.collisionFlags == CollisionFlags.None)
        {
            print("Free floating!");
        }        if ((controller.collisionFlags & CollisionFlags.Sides) != 0)
        {
            print("Touching sides!");
        }        if (controller.collisionFlags == CollisionFlags.Sides)
        {
            print("Only touching sides, nothing else!");
        }        if ((controller.collisionFlags & CollisionFlags.Above) != 0)
        {
            print("Touching Ceiling!");
        }        if (controller.collisionFlags == CollisionFlags.Above)
        {
            print("Only touching Ceiling, nothing else!");
        }        if ((controller.collisionFlags & CollisionFlags.Below) != 0)
        {
            print("Touching ground!");
        }        if (controller.collisionFlags == CollisionFlags.Below)
        {
            print("Only touching ground, nothing else!");
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| None | CollisionFlags is a bitmask returned by CharacterController.Move. |
| Sides | CollisionFlags is a bitmask returned by CharacterController.Move. |
| Above | CollisionFlags is a bitmask returned by CharacterController.Move. |
| Below | CollisionFlags is a bitmask returned by CharacterController.Move. |
