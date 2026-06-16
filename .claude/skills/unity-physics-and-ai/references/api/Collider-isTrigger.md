<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider-isTrigger.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specify if this collider is configured as a trigger.

A trigger doesn't register a collision with an incoming Rigidbody. Instead, it sends OnTriggerEnter, OnTriggerExit and OnTriggerStay message when a rigidbody enters or exits the trigger volume.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Collider m_ObjectCollider;    void Start()
    {
        //Fetch the GameObject's Collider (make sure they have a Collider component)
        m_ObjectCollider = GetComponent<Collider>();
        //Here the GameObject's Collider is not a trigger
        m_ObjectCollider.isTrigger = false;
        //Output whether the Collider is a trigger type Collider or not
        Debug.Log("Trigger On : " + m_ObjectCollider.isTrigger);
    }    void OnMouseDown()
    {
        //GameObject's Collider is now a trigger Collider when the GameObject is clicked. It now acts as a trigger
        m_ObjectCollider.isTrigger = true;
        //Output to console the GameObject’s trigger state
        Debug.Log("Trigger On : " + m_ObjectCollider.isTrigger);
    }
}
```
