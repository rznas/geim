<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.AddForceAtPosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| force | Components of the force in the X and Y axes. |
| position | Position in world space to apply the force. |
| mode | The method used to apply the specified force. |

### Description

Apply a force at a given position in space.

The AddForce function applies a force that acts straight through the rigidbody's centre of mass and so produces only positional movement and no rotation. *AddForceAtPosition* can apply the force at any position in world space and will typically also apply a *torque* to the object which will set it rotating. Note that for the purposes of this function, the rigidbody is just a coordinate space of infinite size, so there is no reason why the force needs to be applied within the confines of the object's graphic or colliders.

Additional resources:: AddForce, AddTorque, AddForceAtPosition, ForceMode2D.
