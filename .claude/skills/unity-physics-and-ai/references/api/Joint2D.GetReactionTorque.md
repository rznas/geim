<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Joint2D.GetReactionTorque.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| timeStep | The time to calculate the reaction torque for. |

### Returns

**float** The reaction torque of the joint in the specified `timeStep`.

### Description

Gets the reaction torque of the joint given the specified `timeStep`.

When a joint tries to constrain a Rigidbody2D it may need to apply torque to do so. This is known as the reaction torque.

Additional resources: reactionTorque, breakTorque.
