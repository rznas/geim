<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.WorldProfile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

PhysicsWorld profile that contains the timings of specific world simulation stages. All times are in milliseconds.

### Properties

| Property | Description |
| --- | --- |
| applyBounciness | Time spent applying bounciness. |
| bodyTransforms | Time spent updating body transforms. |
| broadphaseUpdates | Time spent refitting the broadphase. |
| contactPairs | Time spent updating collision pairs and creating contacts. |
| contactUpdates | Time spent updating contacts. |
| fastTriggers | Time spent calculate fast triggers for bodies. |
| hitEvents | Time spent generating contact hit events. |
| integrateTransforms | Time spent integrating transforms. |
| integrateVelocities | Time spent integrating velocities. |
| jointEvents | Time spent generating joint threshold events. |
| prepareConstraints | Time spent preparing joint and contact constraints. |
| prepareStages | Time spent preparing simulation stages. |
| relaxImpulses | Time spent relaxing constraint impulses. |
| simulationStep | Time spent stepping the simulation forward. |
| sleepIslands | Time spent updating islands that need to sleep. |
| solveConstraints | Time spent solving constraints. |
| solveContinuous | Time spent solving continuous collision detection. |
| solveImpulses | Time spent solving impulses. |
| solving | Time spent integrating velocities, solving velocity constraints, and integrating positions. |
| splitIslands | Time spent splitting islands because some contacts and/or joints have been removed. |
| storeImpulses | Time spent storing impulses. |
| updateTriggers | Time spent updating triggers. |
| warmStarting | Time spent warm-starting. |
| writeTransforms | Time spent writing the body poses to the transform system. |

### Static Methods

| Method | Description |
| --- | --- |
| Add | Add the specified world profiles together. |
| Maximum | Find the maximum values the specified world profiles. |
