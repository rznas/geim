<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsSliderJoint.SetOwner.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| owner | The object that owns this joint. This can be NULL if not required. |

### Returns

**int** An owner key that must be passed to PhysicsJoint.Destroy when destroying the joint.

### Description

Set the (optional) owner object associated with this joint and return an owner key that must be specified when destroying the joint with PhysicsJoint.Destroy. The physics system provides access to all objects, including the ability to destroy them so this feature can be used to stop accidental destruction of objects that are owned by other objects. You can only set the owner once, multiple attempts will produce a warning. The lifetime of the specified owner object is not linked to this joint i.e. this joint will still be owned by the owner object, even if it is destroyed. It is also valid to not specify an owner object (NULL) to simply gain an owner key however it can be useful, if simply for debugging purposes and discovery, to know which object is the owner.
