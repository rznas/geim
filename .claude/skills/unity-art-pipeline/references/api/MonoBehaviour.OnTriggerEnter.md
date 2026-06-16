<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnTriggerEnter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | The other Collider involved in this collision. |

### Description

Called when a collider enters a trigger collider.

`OnTriggerEnter` is called on whichever iteration of the physics `FixedUpdate` loop Unity first detects that the collider has entered the trigger. The colliders involved are not always at the point of initial contact when Unity detects the collision.

Both GameObjects must contain a Collider component. At least one of the colliders must be a trigger collider and at least one must be a physics body collider. For more information, refer to OnTrigger events.

Both the trigger and the collider that touches the trigger receive `OnTriggerEnter` if they have implemented it. Trigger events are sent to disabled MonoBehaviours to allow enabling Behaviours in response to collisions.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    private float speed = 2f;    //Moves this GameObject 2 units a second in the forward direction
    void Update()
    {
        transform.Translate(Vector3.forward * Time.deltaTime * speed);
    }    //Upon collision with another GameObject, this GameObject will reverse direction
    private void OnTriggerEnter(Collider other)
    {
        speed = speed * -1;
    }
}
```
