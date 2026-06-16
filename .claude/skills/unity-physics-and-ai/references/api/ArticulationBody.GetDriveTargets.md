<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.GetDriveTargets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targets | Supplied list of floats to read back and store the joint drive targets data. |

### Returns

**int** Total degrees of freedom for the entire hierarchy of articulation bodies.

### Description

Reads back articulation body joint drive targets of the entire hierarchy to the supplied list of floats.

This returns joint drive targets in the reduced coordinate space for the entire articulation hierarchy starting from root to the supplied list of floats. Every joint drive target DOF is represented by one float value, however depending on the type of the articulation joint there might be zero, one or 3 DOFs per joint. The exact location of the data in resulting list for the specific articulation body can be found by calling ArticulationBody.GetDofStartIndices and indexing returned dofStartIndices list by the particular body index via ArticulationBody.index. Number of degrees of freedom for the articulation body can be found using ArticulationBody.dofCount.

 Units of measurement - meters for linear and radians for angular motion.

 Additional resources: index, GetDofStartIndices, dofCount, SetDriveTargets.
