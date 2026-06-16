<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsCallbacks.IPreSolveCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An interface that when implemented by a UnityEngine.Object, can be called as a target when a PhysicsShape has PhysicsShape.preSolveCallbacks set to true. The PhysicsWorld the PhysicsShape is in also has to have its PhysicsWorld.preSolveCallbacks set to true.

### Public Methods

| Method | Description |
| --- | --- |
| OnPreSolve2D | Called when a contact between a pair of shapes is updated. This allows a contact to be disabled before it goes to the solver. A typical use-case would be to implement a one-way behaviour based upon the provided contact. This is only called if the PhysicsWorld has PhysicsWorld.preSolveCallbacks set to true. An event is only produced if one of the PhysicsShape have PhysicsShape.preSolveCallbacks set to true. This is only called for Awake Dynamic bodies. This is not called for triggers. Extreme care must be taken with this callback!! This callback occurs during the simulation step and can be called from any thread, therefore it must be thread-safe. During this time, the simulation state is undefined for the broadphase, events etc. For this reason, any attempt to perform a write operation will result in a deadlock as the world itself is write locked. Performing simple read operations on PhysicsBody, PhysicsShape or PhysicsJoint is safe, such as reading velocity or getting the geometry of a shape, however more complex operations involving the world such as performing a query can result in corruption or crashes. A recommendation is to use the provided contact details to make a decision in the callback. An additional recommendation is reading UnityEngine.LowLevelPhysics2D.PhysicsUserData from any object which is a completely safe read operation therefore any required information should be encoded there if possible. |
