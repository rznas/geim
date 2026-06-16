<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WheelHit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contact information for the wheel, reported by WheelCollider.

Friction for the WheelCollider is computed separately from the rest of the physics, using a slip based tire friction model. This allows for more realistic behaviour, but makes wheel colliders ignore standard PhysicsMaterial settings.

The way to simulate different ground materials is to query WheelCollider for its collision information (see WheelCollider.GetGroundHit). Usually, you get the other collider the wheel is hitting, and modify the wheel's WheelCollider.forwardFriction and WheelCollider.sidewaysFriction based on the physics material of the ground.

The other members of the WheelHit structure are usually queried for information purposes or special effects. For example, a "slipping tire" sound can be played if forwardSlip or sidewaysSlip exceed some threshold.

Additional resources: WheelCollider.GetGroundHit.

### Properties

| Property | Description |
| --- | --- |
| collider | The other Collider the wheel is hitting. |
| force | The magnitude of the force being applied for the contact. |
| forwardDir | The direction the wheel is pointing in. |
| forwardSlip | Tire slip in the rolling direction. Acceleration slip is negative, braking slip is positive. |
| normal | The normal at the point of contact. |
| point | The point of contact between the wheel and the ground. |
| sidewaysDir | The sideways direction of the wheel. |
| sidewaysSlip | Tire slip in the sideways direction. |
