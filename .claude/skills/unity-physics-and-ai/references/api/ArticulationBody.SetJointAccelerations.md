<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.SetJointAccelerations.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| accelerations | Supplied list of floats used to set the joint accelerations. |

### Description

Assigns articulation body joint accelerations for the entire hierarchy of bodies.

This sets joint accelerations in the reduced coordinate space for the entire articulation hierarchy starting from root using the supplied list of floats. Every joint acceleration DOF is represented by one float value, however depending on the type of the articulation joint there might be zero, one or 3 DOFs per joint. The exact location of the data to be set in the supplied list for the specific articulation body can be found by calling ArticulationBody.GetDofStartIndices and indexing returned dofStartIndices list by the particular body index via ArticulationBody.index. Number of degrees of freedom(DOF) for the articulation body can be found using ArticulationBody.dofCount.

 Units of measurement - m/s^2 (meters per second squared) for linear and rad/s^2 (radians per second squared) for angular motion.

 Additional resources: index, GetDofStartIndices, dofCount, GetJointAccelerations.
