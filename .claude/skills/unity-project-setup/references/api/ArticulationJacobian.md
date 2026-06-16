<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationJacobian.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The floating point dense Jacobian matrix of the articulation body hierarchy.

Jacobian matrix is important concept used in robotics and inverse kinematics. Multiplication with the Jacobian matrix maps the reduced coordinate space joint velocities of the articulated body to world space velocities. Also can be used for inverse kinematics, because it can provide relation between joint velocities and end effector velocities of the articulated body. Additional resources: ArticulationBody.GetDenseJacobian.

### Properties

| Property | Description |
| --- | --- |
| columns | Number of columns of the matrix is equal to the total number of all joint degrees of freedom(DOF), plus 6 if ArticulationBody.immovable is false. |
| elements | List of floats representing Jacobian matrix. |
| rows | Number of rows of the matrix is equal to the number of articulation bodies in hierarchy times 6: 3 rows of linear/positional DOF and 3 rows of angular/rotational DOF for each body. |
| this[int,int] | Gets the [row, col] element of the matrix. |

### Constructors

| Constructor | Description |
| --- | --- |
| ArticulationJacobian | Initializes nRows X nCols Jacobian matrix to zeroes. |
