<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnMouseOver.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called every frame while the mouse is over the Collider.

A call to OnMouseEnter occurs on the first frame the mouse is over the object. OnMouseOver is then called each frame until the mouse moves away, at which point OnMouseExit is called.

This event is sent to all scripts attached to the Collider. This function is not called on objects that belong to Ignore Raycast layer.

This function is called on Colliders and 2D Colliders marked as trigger when the following properties are set to true:

- For 3D physics: Physics.queriesHitTriggers
- For 2D physics: Physics2D.queriesHitTriggers

`OnMouseOver` can be a coroutine.

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

Another example:

```csharp
// This second example changes the GameObject's color to red when the mouse hovers over it
// Ensure the GameObject has a MeshRendererusing UnityEngine;public class OnMouseOverColor : MonoBehaviour
{
    //When the mouse hovers over the GameObject, it turns to this color (red)
    Color m_MouseOverColor = Color.red;    //This stores the GameObject’s original color
    Color m_OriginalColor;    //Get the GameObject’s mesh renderer to access the GameObject’s material and color
    MeshRenderer m_Renderer;    void Start()
    {
        //Fetch the mesh renderer component from the GameObject
        m_Renderer = GetComponent<MeshRenderer>();
        //Fetch the original color of the GameObject
        m_OriginalColor = m_Renderer.material.color;
    }    void OnMouseOver()
    {
        // Change the color of the GameObject to red when the mouse is over GameObject
        m_Renderer.material.color = m_MouseOverColor;
    }    void OnMouseExit()
    {
        // Reset the color of the GameObject back to normal
        m_Renderer.material.color = m_OriginalColor;
    }
}
```
