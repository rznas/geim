<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform-parent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The parent of the transform.

Changing the parent will modify the parent-relative position, scale and rotation but keep the world space position, rotation and scale the same.

Additional resources: SetParent.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public GameObject player;    //Invoked when a button is pressed.
    public void SetParent(GameObject newParent)
    {
        //Makes the GameObject "newParent" the parent of the GameObject "player".
        player.transform.parent = newParent.transform;        //Display the parent's name in the console.
        Debug.Log("Player's Parent: " + player.transform.parent.name);        // Check if the new parent has a parent GameObject.
        if (newParent.transform.parent != null)
        {
            //Display the name of the grand parent of the player.
            Debug.Log("Player's Grand parent: " + player.transform.parent.parent.name);
        }
    }    public void DetachFromParent()
    {
        // Detaches the transform from its parent.
        transform.parent = null;
    }
}
```
