<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnMouseDrag.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

OnMouseDrag is called when the user has clicked on a Collider and is still holding down the mouse.

OnMouseDrag is called every frame while the mouse is down.

This event is sent to all scripts attached to the Collider. This function is not called on objects that belong to Ignore Raycast layer.

This function is called on Colliders and 2D Colliders marked as trigger when the following properties are set to true:

- For 3D physics: Physics.queriesHitTriggers
- For 2D physics: Physics2D.queriesHitTriggers

`OnMouseDrag` can be a coroutine.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Renderer rend;    void Start()
    {
        rend = GetComponent<Renderer>();
    }    void OnMouseDrag()
    {
        rend.material.color -= Color.white * Time.deltaTime;
    }
}
```
