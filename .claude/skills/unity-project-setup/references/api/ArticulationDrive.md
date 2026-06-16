<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationDrive.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Drive applies forces and torques to the connected bodies.

Drive moves the body along one degree of freedom, be it a linear motion along a particular axis or a rotational motion around a particular axis. The drive will apply force to the body that is calculated from the current value of the drive, using this formula: F = stiffness * (currentPosition - target) - damping * (currentVelocity - targetVelocity). In this formula, currentPosition and currentVelocity are linear position and linear velocity in case of the linear drive. In case of the rotational drive, currentPosition and currentVelocity correspond to the angle and angular velocity respectively.

### Properties

| Property | Description |
| --- | --- |
| damping | The damping of the spring attached to this drive. |
| driveType | Specifies which drive type to use for this drive. |
| forceLimit | The maximum force this drive can apply to a body. |
| lowerLimit | The lower limit of motion for a particular degree of freedom. |
| stiffness | The stiffness of the spring connected to this drive. |
| target | The target value the drive will try to reach. |
| targetVelocity | The velocity of the body this drive will try to reach. |
| upperLimit | The upper limit of motion for a particular degree of freedom. |
