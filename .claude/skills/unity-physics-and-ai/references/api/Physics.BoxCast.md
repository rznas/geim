<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.BoxCast.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| center | Center of the box. |
| halfExtents | Half the size of the box in each dimension. |
| direction | The direction in which to cast the box. |
| orientation | Rotation of the box. |
| maxDistance | The max length of the cast. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a box. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**bool** True, if any intersections were found.

### Description

Casts the box along a ray and returns detailed information on what was hit.

### Parameters

| Parameter | Description |
| --- | --- |
| center | Center of the box. |
| halfExtents | Half the size of the box in each dimension. |
| direction | The direction in which to cast the box. |
| hitInfo | If true is returned, `hitInfo` will contain more information about where the collider was hit. (Additional resources: RaycastHit). |
| orientation | Rotation of the box. |
| maxDistance | The max length of the cast. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a box. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**bool** True, if any intersections were found.

### Description

Casts the box along a ray and returns detailed information on what was hit.

```csharp
//Attach this script to a GameObject. Make sure it has a Collider component by clicking the Add Component button. Then click Physics>Box Collider to attach a Box Collider component.
//This script creates a BoxCast in front of the GameObject and outputs a message if another Collider is hit with the Collider’s name.
//It also draws where the ray and BoxCast extends to. Just press the Gizmos button to see it in Play Mode.
//Make sure to have another GameObject with a Collider component for the BoxCast to collide with.using UnityEngine;[RequireComponent(typeof(Collider))]
public class Example : MonoBehaviour
{
    [SerializeField] private float maxDistance = 300f;
    [SerializeField] private Vector3 boxSizeMultiplier = Vector3.one * 0.5f;    private Collider col;
    private RaycastHit hit;
    private bool hitDetected;
    
    void Awake()
    {
        col = GetComponent<Collider>();
    }
    
    void FixedUpdate()
    {
        Vector3 halfExtents = Vector3.Scale(transform.localScale, boxSizeMultiplier);
        Vector3 origin = col.bounds.center;
        Vector3 direction = transform.forward;
        
        //Test to see if there is a hit using a BoxCast
        //Calculate using the center of the GameObject's Collider(could also just use the GameObject's position), half the GameObject's size, the direction, the GameObject's rotation, and the maximum distance as variables.
        //Also fetch the hit data
        hitDetected = Physics.BoxCast(
            origin, 
            halfExtents, 
            direction,
            out hit, 
            transform.rotation,
            maxDistance);
        
        if (hitDetected)
        {
            //Output the name of the Collider your Box hit
            Debug.Log("Hit : " + hit.collider.name);
        }
    }    //Draw the BoxCast as a gizmo to show where it currently is testing. Click the Gizmos button to see this
    void OnDrawGizmos()
    {
        Gizmos.color = Color.red;
        
        if (hitDetected)
        {
            //Draw a Ray forward from GameObject toward the hit
            Gizmos.DrawRay(transform.position, transform.forward * hit.distance);
            //Draw a cube that extends to where the hit exists
            Gizmos.DrawWireCube(transform.position + transform.forward * hit.distance, transform.localScale);
        }
        else
        {
            //Draw a Ray forward from GameObject toward the maximum distance
            Gizmos.DrawRay(transform.position, transform.forward * maxDistance);
            //Draw a cube at the maximum distance
            Gizmos.DrawWireCube(transform.position + transform.forward * maxDistance, transform.localScale);
        }
    }
}
```
