<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnMouseDown.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

OnMouseDown is called when the user presses the left mouse button while over the Collider.

This event is sent to all scripts of the GameObject with Collider. Scripts of the parent or child objects do not receive this event.

When multiple cameras are present, to determine if the mouse is over a collider, Unity uses the camera that is rendering to the screen where the mouse is. For most cases, this is Camera.main, but with multiple cameras or custom setups it might differ. If you need more control, use Camera.ScreenPointToRay with a specific camera and perform your own raycasts in scripts.

This function is not called on objects that belong to Ignore Raycast layer.

This function is called on Colliders and 2D Colliders marked as trigger when the following properties are set to true:

- For 3D physics: Physics.queriesHitTriggers
- For 2D physics: Physics2D.queriesHitTriggers

`OnMouseDown` can be a coroutine.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void OnMouseDown()
    {
        // Destroy the gameObject after clicking on it
        Destroy(gameObject);
    }
}
```
