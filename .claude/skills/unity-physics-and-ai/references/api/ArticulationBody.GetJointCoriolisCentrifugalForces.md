<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.GetJointCoriolisCentrifugalForces.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| forces | Supplied list of floats to store the counteracting Coriolis/centrifugal force data. |

### Returns

**int** Total degrees of freedom (DoF) for the entire hierarchy of articulation bodies.

### Description

Fills the supplied list of floats with the forces required to counteract the Coriolis and centrifugal forces for each Articulation Body in the articulation.

This returns the forces required to counteract the Coriolis and centrifugal forces in the reduced coordinate space for the entire articulation hierarchy starting from root to the supplied list of floats. Every joint drive force DOF is represented by one float value. Depending on the type of the articulation joint there might be zero, one or three DOFs per joint. To find the exact location of the data in the resulting list for the specific articulation body, call ArticulationBody.GetDofStartIndices and index the returned dofStartIndices list by the particular body index via ArticulationBody.index. To find the number of DOF for the articulation body, use ArticulationBody.dofCount. 
 ArticulationDrives and potential damping terms are not considered in the computation (for example, linear/angular damping or joint friction). 
 Additional resources: index, GetDofStartIndices, dofCount, SetDriveTargets.
