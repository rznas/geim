<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnMouseUp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called on releasing the mouse button while the mouse pointer is over the Collider attached to this GameObject.

The key factor is where the mouse button is released rather than where it was initially pressed down:

- If you press the mouse button down anywhere, then move the cursor over the collider and release, `OnMouseUp` is called on that collider.
- If you press the button over a collider, move the mouse away, and release, `OnMouseUp` is not called on that collider.

For button-like behavior (requiring both press and release over the same collider), use MonoBehaviour.OnMouseUpAsButton.

This event is sent to all scripts attached to the Collider. This function is not called on objects that belong to Ignore Raycast layer. This function is called on Colliders and 2D Colliders marked as trigger when the following properties are set to true:

- For 3D physics: Physics.queriesHitTriggers
- For 2D physics: Physics2D.queriesHitTriggers

OnMouseUp can be a coroutine.

Additional resources: OnMouseDown, OnMouseDrag.

```csharp
// Register when mouse dragging has ended. OnMouseUp is called
// when the mouse button is released.using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void OnMouseUp()
    {
        // If the user releases the mouse button while over the GameObject with this script attached, output this message
        Debug.Log("Drag ended!");
    }
}
```
