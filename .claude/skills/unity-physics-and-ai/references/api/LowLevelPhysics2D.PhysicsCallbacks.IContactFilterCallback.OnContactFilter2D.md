<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsCallbacks.IContactFilterCallback.OnContactFilter2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| contactFilterEvent | The event that occurred. |

### Returns

**bool** Return false if you do not want a contact to be created during this simulation step. Returning true allows the contact to be created.

### Description

Called when a pair of shapes are determined to be in contact. This is called to decide if a contact will be created for these shapes, allowing contact creation to be bypassed so a contact will not go to the solver. This is only called if the PhysicsWorld has PhysicsWorld.contactFilterCallbacks set to true. An event is only produced if one of the PhysicsShape have PhysicsShape.contactFilterCallbacks set to true. This is called for both triggers and non-triggers but only with Dynamic bodies.

 Extreme care must be taken with this callback!! This callback occurs during the simulation step and can be called from any thread, therefore it must be thread-safe. During this time, the simulation state is undefined for the broadphase, events etc. For this reason, any attempt to perform a write operation will result in a deadlock as the world itself is write locked. Performing simple read operations on PhysicsBody, PhysicsShape or PhysicsJoint is safe, such as reading velocity or getting the geometry of a shape however, more complex operations involving the world such as performing a query can result in corruption or crashes. A recommendation is reading UnityEngine.LowLevelPhysics2D.PhysicsUserData from any object which is a completely safe read operation therefore any required information should be encoded there if possible.
