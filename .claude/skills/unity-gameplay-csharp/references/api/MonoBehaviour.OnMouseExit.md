<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnMouseExit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called when the mouse is not any longer over the Collider.

A call to OnMouseExit follows the corresponding calls to OnMouseEnter and OnMouseOver.

This event is sent to all scripts attached to the Collider. This function is not called on objects that belong to Ignore Raycast layer.

This function is called on Colliders and 2D Colliders marked as trigger when the following properties are set to true:

- For 3D physics: Physics.queriesHitTriggers
- For 2D physics - Physics2D.queriesHitTriggers

`OnMouseExit` can be a coroutine.

```csharp
//Attach this script to a GameObject to have it output messages when your mouse hovers over it.
using UnityEngine;public class OnMouseOverExample : MonoBehaviour
{
    void OnMouseOver()
    {
        //If your mouse hovers over the GameObject with the script attached, output this message
        Debug.Log("Mouse is over GameObject.");
    }    void OnMouseExit()
    {
        //The mouse is no longer hovering over the GameObject so output this message each frame
        Debug.Log("Mouse is no longer on GameObject.");
    }
}
```
