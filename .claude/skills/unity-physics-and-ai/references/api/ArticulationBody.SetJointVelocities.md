<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.SetJointVelocities.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| velocities | Supplied list of floats used to set the joint velocities. |

### Description

Assigns articulation body joint velocities for the entire hierarchy of bodies.

This sets joint velocities in the reduced coordinate space for the entire articulation hierarchy starting from root using the supplied list of floats. Every joint velocity DOF is represented by one float value, however depending on the type of the articulation joint there might be zero, one or 3 DOFs per joint. The exact location of the data to be set in the supplied list for the specific articulation body can be found by calling ArticulationBody.GetDofStartIndices and indexing returned dofStartIndices list by the particular body index via ArticulationBody.index. Number of degrees of freedom(DOF) for the articulation body can be found using ArticulationBody.dofCount.

 Units of measurement - m/s (meters per second) for linear and rad/s (radians per second) for angular motion.

 Additional resources: index, GetDofStartIndices, dofCount, GetJointVelocities.
