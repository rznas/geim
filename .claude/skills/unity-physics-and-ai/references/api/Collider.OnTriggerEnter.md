<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider.OnTriggerEnter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | The other Collider involved in this collision. |

### Description

Called when a Collider with the Collider.isTrigger property overlaps another Collider.

OnTriggerEnter is invoked when two GameObjects with a Collider component touch or overlap, and one of the Collider components has the Collider.isTrigger property enabled. A trigger Collider doesn't register collisions with an incoming Rigidbody and doesn't collide with any other GameObjects that have Colliders on them. The events are invoked during simulation, which happens after all FixedUpdate methods are called, or within the scope of Physics.Simulate, if you're using manual physics simulation.

Any Collider on a GameObject that has a Rigidbody component, or on a child of a GameObject with a Rigidbody component can create OnTrigger events.

 To use the following code sample, create a primitive GameObject, and attach a Collider and Rigidbody component to it. Enable Collider.isTrigger and Rigidbody.isKinematic. This GameObject will travel forward, until it collides with another GameObject. When a collision occurs, the direction immediately reverses.

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
