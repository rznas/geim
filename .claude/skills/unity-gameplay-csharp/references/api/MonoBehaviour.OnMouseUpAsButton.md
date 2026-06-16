<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnMouseUpAsButton.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

OnMouseUpAsButton is only called when the mouse is released over the same Collider as it was pressed.

This event is sent to all scripts attached to the Collider. This function is not called on objects that belong to Ignore Raycast layer. This function is called on Colliders and 2D Colliders marked as trigger when the following properties are set to true: - For 3D physics: Physics.queriesHitTriggers - For 2D physics: Physics2D.queriesHitTriggers 

OnMouseUpAsButton can be a coroutine.

Additional resources: OnMouseUp.

```csharp
// Loads the level named "SomeLevel" as a response
// to the user clicking on the objectusing UnityEngine;public class ExampleClass : MonoBehaviour
{
    void OnMouseUpAsButton()
    {
        Application.LoadLevel("SomeLevel");
    }
}
```
