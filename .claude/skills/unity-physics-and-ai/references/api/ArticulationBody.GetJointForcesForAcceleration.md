<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.GetJointForcesForAcceleration.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| acceleration | The desired acceleration in reduced space. |

### Returns

**ArticulationReducedSpace** The forces needed for the body to reach the desired acceleration in reduced space.

### Description

Returns the forces required for the body to reach the provided acceleration in reduced space.

The number of DOF in the provided acceleration must match the DOF count of the inbound joint. The calculation does **not** consider gravity and therefore gravity must be counteracted with ArticulationBody.GetJointGravityForces. ArticulationDrives and potential damping terms are not considered in the computation (for example, linear/angular damping or joint friction). 
 The returned forces can then be applied with ArticulationBody.jointForce.

 Units of measurement - N (newtons) for linear and Nm (newton-meters) for angular motion.
