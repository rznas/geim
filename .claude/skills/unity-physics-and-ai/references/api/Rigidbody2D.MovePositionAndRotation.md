<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.MovePositionAndRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position to move the rigidbody to. |
| angle | The angle to move the rigidbody to. |

### Description

Moves the rigidbody position to `position` and the rigidbody angle to `angle`.

This is a combination of calling both MovePosition and MoveRotation. This can be used to increase performance by not having to perform two separate calls to queue movements.

For more details on the operation of movement using these methods, refer to Rigidbody2D.MovePosition and Rigidbody2D.MoveRotation.

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position to move the rigidbody to. |
| rotation | The rotation to move the rigidbody to. Only the Z-Axis rotation is used from the full 3D Quaternion rotation. |

### Description

Moves the rigidbody position to `position` and the rigidbody angle to `rotation`.

This is a combination of calling both MovePosition and MoveRotation. This can be used to increase performance by not having to perform two separate calls to queue movements.

For more details on the operation of movement using these methods, refer to Rigidbody2D.MovePosition and Rigidbody2D.MoveRotation.
