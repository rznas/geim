<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WheelCollider-forceAppPointDistance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Application point of the suspension and tire forces measured from the base of the resting wheel.

This is specified as a distance along the local up vector of the vehicle's rigid body from the base of the wheel at its rest coordinate (the rest coordinate of the wheel is determined by the value WheelCollider.spring.targetPosition). This parameter simulates the effective roll center of the suspension geometry. For a standard family car the value of forceAppPointDistance should be tuned to place the application point approximately 0.3m below the rigid body center of mass. Moving the application point downwards introduces more roll when cornering, while moving it upwards results in less roll when cornering. The force application point is typically below the rigid body center of mass.

Please note that having this parameter equal to zero could be undesirable as it contributes to simulation instability in certain configurations. Once you observe your vehicle failing to go asleep resting on flat surface, exhibiting jittering behavior or drifting along the surface when no user input is applied, check the forceAppPointDistance values. In the editor, when a WheelCollider game object is selected, there is a green spherical gizmo displayed to show where the force application point is at the moment. Try increasing forceAppPointDistance value gradually, until you're satisfied with the result.
