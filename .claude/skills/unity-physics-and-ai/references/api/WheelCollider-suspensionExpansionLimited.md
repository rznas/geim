<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WheelCollider-suspensionExpansionLimited.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| active | Turns on/off the property |

### Description

Limits the expansion velocity of the Wheel Collider's suspension. If you set this property on a Rigidbody that has several Wheel Colliders, such as a vehicle, then it affects all other Wheel Colliders on the Rigidbody.

If you use a Wheel Collider that has extreme values for Suspension Spring properties, such as suspensionSpring.damper or suspensionSpring.spring, the large damping forces might make the vehicle stick to the ground, instead of lifting off. While it's best practice to use realistic damping ratios, you can use this property to limit the velocity of suspension.

In more detail, the simulation checks whether the suspension can extend to the target length in the given simulation time step. If it can, Unity computes the suspension force as usual, otherwise it sets the force to zero. If you use this feature, it results in a slightly more realistic behavior at the potential cost of losing control when steering the vehicle.
