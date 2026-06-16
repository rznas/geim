<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody.Move.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The new position for the Rigidbody. |
| rotation | The new rotation for the Rigidbody. |

### Description

Moves the Rigidbody to `position` and rotates the Rigidbody to `rotation`.

Use Rigidbody.Move to move and rotate a Rigidbody, complying with the Rigidbody's interpolation setting.

If you enable Rigidbody interpolation on the Rigidbody, calling Rigidbody.Move results in a smooth transition between the two positions and rotations in any intermediate frames that Unity renders. Use Rigidbody.Move if you want to continuously move and rotate a Rigidbody in each FixedUpdate.

To teleport a Rigidbody from one position and rotation to another position and rotation, without Unity rendering intermediate positions, set Rigidbody.position and Rigidbody.rotation instead.
