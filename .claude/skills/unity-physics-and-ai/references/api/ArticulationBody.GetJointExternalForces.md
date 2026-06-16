<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.GetJointExternalForces.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| forces | Supplied list of floats to store the counteracting external force data. |
| step | The timestep of the next physics simulation. |

### Returns

**int** Total degrees of freedom (DOF) for the entire hierarchy of articulation bodies.

### Description

Fills the supplied list of floats with forces required to counteract any existing external forces (applied using ArticulationBody.AddForce or ArticulationBody.AddTorque) for each Articulation Body in the articulation.

This returns the forces required to counteract external forces in the reduced coordinate space for the entire articulation hierarchy starting from root to the supplied list of floats. This function utilizes the ArticulationBody.GetAccumulatedForce and ArticulationBody.GetAccumulatedTorque methods. As such, you must supply the timestep of the next simulation. 
 Every joint drive force DOF is represented by one float value. Depending on the type of the articulation joint, a joint can have zero, one or three DOFs. To find the exact location of the data in the resulting list for the specific articulation body, call ArticulationBody.GetDofStartIndices and index the returned dofStartIndices list by the particular body index via ArticulationBody.index. To find the number of DOF for the articulation body, use ArticulationBody.dofCount. 
 Gravity, ArticulationDrives and potential damping terms are not considered in the computation (for example, linear/angular damping or joint friction). 
 Additional resources: index, GetDofStartIndices, dofCount, SetDriveTargets.
