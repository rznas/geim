<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D-forceSendLayers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Layers that this Collider2D is allowed to send forces to during a Collision contact with another Collider2D.

When a collision occurs between two Collider2D, both Colliders would normally apply a force to each other that separates them. Both Colliders have a Layer assigned to them respectively, which can be the same or different Layer(s). For the forces to apply, each Collider must send a force to the Layer that is assigned to the other Collider, while also receiving a force on their own Layer from the other Collider. Thus, both Colliders must mutually agree on which Layers the forces are being sent and received.

The forceSendLayers property allows you to select which Layers that the Collider sends a force to, while forceReceiveLayers allows you to select which Layers the Collider receives a force from.

**NOTES**:

- Because forces only relate to a Collision contact, this features does not apply when either Collider2D is set to be a trigger via Collider2D.isTrigger and does not affect mutual forces applied by a Joint2D.
- Any Rigidbody2D.bodyType can send forces; however, only a Dynamic Body Type can receive forces. Neither Kinematic Body Type nor Static Body Type can receive forces.
- Forces being sent and received do not affect Collision callbacks which are still called even if no forces are applied.
- During a Collision callback, any impulses reported by ContactPoint2D.normalImpulse or ContactPoint2D.tangentImpulse will be the impulses that would have been applied if forceSendLayers and forceReceiveLayers were not used.

Additional resources: Collider2D.forceReceiveLayers.
