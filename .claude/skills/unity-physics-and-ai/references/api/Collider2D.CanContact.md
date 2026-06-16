<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D.CanContact.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| collider | The other Collider that is to be checked to see if it can contact the current Collider. |

### Returns

**bool** Returns `true` if both Colliders can contact each other otherwise `false` indicating that they cannot contact each other.

### Description

This method determines if both Colliders can ever come into contact.

Determining if Colliders can come into contact involves multiple checks including:

- Each Collider2D must be active and enabled. See Behaviour.isActiveAndEnabled.
- Each Collider2D must be on a GameObject that is in the same PhysicsScene2D. By default, this is true but see PhysicsSceneExtensions2D.GetPhysicsScene2D and LocalPhysicsMode.Physics2D.
- Each Collider2D that is attached to a Rigidbody2D must have a compatible Rigidbody2D.bodyType. For instance RigidbodyType2D.Static cannot contact another RigidbodyType2D.Static. Without a Rigidbody2D, the Collider2D is implicitly Static. Kinematic vs Kinematic/Static will only contact if Rigidbody2D.useFullKinematicContacts is enabled.
- The Collider2D will not contact if they are specified using Physics2D.IgnoreCollision.
- The Collider2D will not contact if they are part of an Effector2D that is using Effector2D.useColliderMask.
- The Collider2D will not contact if their layer collision (in the Layer Collision Matrix) is set to not contact unless overriden using the Rigidbody2D and Collider2D layer overrides.

Additional resources: Collider2D.contactMask, Collider2D.includeLayers, Collider2D.excludeLayers, Rigidbody2D.includeLayers and Rigidbody2D.excludeLayers.
