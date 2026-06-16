<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.GetDenseJacobian.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| jacobian | Supplied struct to read back and store Jacobian matrix values. |

### Returns

**int** Number of elements in Jacobian matrix.

### Description

Calculates and writes dense Jacobian matrix of the articulation body hierarchy to the supplied struct.

This calculates dense Jacobian matrix of the entire articulation body hierarchy starting from root articulation body. Number of rows ArticulationJacobian.rows of the matrix is equal to the number of articulation bodies in hierarchy times 6: 3 rows of linear/positional DOF and 3 rows of angular/rotational DOF for each body. Number of columns ArticulationJacobian.columns of the matrix is equal to the total number of all joints degrees of freedom(DOF), plus 6 if ArticulationBody.immovable is false. Additional resources: index, ArticulationJacobian, GetDofStartIndices.
