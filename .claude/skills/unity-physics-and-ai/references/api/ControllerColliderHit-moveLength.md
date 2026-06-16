<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ControllerColliderHit-moveLength.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

How far the character has travelled until it hit the collider.

Note that this can be different from what you pass to CharacterController.Move, because the initial movement vector is decomposed into a set of movements, according to CharacterController.stepOffset.

Additional resources: ControllerColliderHit.moveDirection.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void OnControllerColliderHit(ControllerColliderHit hit)
    {
        Debug.Log(hit.moveLength);
    }
}
```
