<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RaycastHit-distance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The distance from the ray's origin to the impact point.

In the case of a ray, the distance represents the magnitude of the vector from the ray's origin to the impact point.

In the case of a swept volume or sphere cast, the distance represents the magnitude of the vector from the origin point to the translated point at which the volume contacts the other collider.

Note that RaycastHit.point represents the point in space where the collision occurs.

```csharp
using UnityEngine;
using UnityEngine.InputSystem;public class Example : MonoBehaviour
{
    // Movable, levitating object.    // This works by measuring the distance to ground with a
    // raycast then applying a force that decreases as the object
    // reaches the desired levitation height.    // Vary the parameters below to
    // get different control effects. For example, reducing the
    // hover damping will tend to make the object bounce if it
    // passes over an object underneath.    // Forward movement force.
    float moveForce = 1.0f;    // Torque for left/right rotation.
    float rotateTorque = 1.0f;    // Desired hovering height.
    float hoverHeight = 4.0f;    // The force applied per unit of distance below the desired height.
    float hoverForce = 5.0f;    // The amount that the lifting force is reduced per unit of upward speed.
    // This damping tends to stop the object from bouncing after passing over
    // something.
    float hoverDamp = 0.5f;    // Rigidbody component.
    Rigidbody rb;
    
    [Header("Input Actions")]
    public InputActionReference moveAction;    private void OnEnable()
    {
        moveAction.action.Enable();
    }    private void OnDisable()
    {
        moveAction.action.Disable();
    }    void Start()
    {
        rb = GetComponent<Rigidbody>();        // Fairly high drag makes the object easier to control.
        rb.linearDamping = 0.5f;
        rb.angularDamping = 0.5f;
    }    void FixedUpdate()
    {
        // Push/turn the object based on arrow key input.
        rb.AddForce(moveAction.action.ReadValue<Vector2>().y * moveForce * transform.forward);
        rb.AddTorque(moveAction.action.ReadValue<Vector2>().x * rotateTorque * Vector3.up);        RaycastHit hit;
        Ray downRay = new Ray(transform.position, -Vector3.up);        // Cast a ray straight downwards.
        if (Physics.Raycast(downRay, out hit))
        {
            // The "error" in height is the difference between the desired height
            // and the height measured by the raycast distance.
            float hoverError = hoverHeight - hit.distance;            // Only apply a lifting force if the object is too low (ie, let
            // gravity pull it downward if it is too high).
            if (hoverError > 0)
            {
                // Subtract the damping from the lifting force and apply it to
                // the rigidbody.
                float upwardSpeed = rb.linearVelocity.y;
                float lift = hoverError * hoverForce - upwardSpeed * hoverDamp;
                rb.AddForce(lift * Vector3.up);
            }
        }
        Debug.DrawRay(transform.position, -Vector3.up * hoverHeight, Color.green);
    }
}
```

Additional resources: Physics.Raycast, Physics.Linecast, Physics.RaycastAll.
