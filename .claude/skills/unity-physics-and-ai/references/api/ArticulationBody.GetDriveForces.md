<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.GetDriveForces.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| forces | Supplied list of floats to store the drive force data. |

### Returns

**int** Total degrees of freedom (DOF) for the entire hierarchy of Articulation Bodies.

### Description

Reads the entire hierarchy of Articulation Bodies and fills the supplied list of floats with Articulation Drive forces.

This returns Articulation Drive forces in the reduced coordinate space for the entire Articulation hierarchy starting from the root to the supplied list of floats. Every drive force DOF is represented by one float value. However, there might be zero, one or three DOFs per joint, depending on the type of the articulation joint. To find the exact location of the data in the resulting list for the specific Articulation Body, call ArticulationBody.GetDofStartIndices and index the returned dofStartIndices list by the particular body index with ArticulationBody.index. To find the number of DOF for the Articulation Body, use ArticulationBody.dofCount.

 Additional resources: index, GetDofStartIndices, dofCount, SetJointForces.
