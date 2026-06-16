<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ControllerColliderHit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

ControllerColliderHit is used by CharacterController.OnControllerColliderHit to give detailed information about the collision and how to deal with it.

### Properties

| Property | Description |
| --- | --- |
| collider | The collider that was hit by the controller. |
| controller | The controller that hit the collider. |
| gameObject | The game object that was hit by the controller. |
| moveDirection | The direction the CharacterController was moving in when the collision occured. |
| moveLength | How far the character has travelled until it hit the collider. |
| normal | The normal of the surface we collided with in world space. |
| point | The impact point in world space. |
| rigidbody | The rigidbody that was hit by the controller. |
| transform | The transform that was hit by the controller. |
