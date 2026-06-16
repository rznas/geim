<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnMouseEnter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called when the mouse enters the Collider.

The corresponding OnMouseOver function is called while the mouse stays over the object and OnMouseExit is called when it moves away.

This event is sent to all scripts attached to the Collider. This function is not called on objects that belong to Ignore Raycast layer.

This function is called on Colliders and 2D Colliders marked as trigger when the following properties are set to true:

- For 3D physics: Physics.queriesHitTriggers
- For 2D physics: Physics2D.queriesHitTriggers

`OnMouseEnter` can be a coroutine.

Additional resources: OnMouseOver, OnMouseExit.

```csharp
// Change the mesh color in response to mouse actions.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Renderer rend;    void Start()
    {
        rend = GetComponent<Renderer>();
    }    // The mesh goes red when the mouse is over it...
    void OnMouseEnter()
    {
        rend.material.color = Color.red;
    }    // ...the red fades out to cyan as the mouse is held over...
    void OnMouseOver()
    {
        rend.material.color -= new Color(0.1F, 0, 0) * Time.deltaTime;
    }    // ...and the mesh finally turns white when the mouse moves away.
    void OnMouseExit()
    {
        rend.material.color = Color.white;
    }
}
```
