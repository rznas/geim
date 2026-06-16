<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collision-collider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Collider we hit (Read Only).

Fetch the Collider of the GameObject your GameObject hits. To find all colliders that were hit in detail you have to iterate the contact points (contacts property).

```csharp
//In this example, the name of the GameObject that collides with your GameObject is output to the console. Then this checks the name of the Collider and if it matches with the one you specify, it outputs another message.//Create a GameObject and make sure it has a Collider component. Attach this script to it.
//Create a second GameObject with a Collider and place it on top of the other GameObject to output that there was a collision. You can add movement to the GameObject to test more.using UnityEngine;public class Example : MonoBehaviour
{
    //If your GameObject starts to collide with another GameObject with a Collider
    void OnCollisionEnter(Collision collision)
    {
        //Output the Collider's GameObject's name
        Debug.Log(collision.collider.name);
    }    //If your GameObject keeps colliding with another GameObject with a Collider, do something
    void OnCollisionStay(Collision collision)
    {
        //Check to see if the Collider's name is "Chest"
        if (collision.collider.name == "Chest")
        {
            //Output the message
            Debug.Log("Chest is here!");
        }
    }
}
```
