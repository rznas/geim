<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Joint2D.GetReactionForce.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| timeStep | The time to calculate the reaction force for. |

### Returns

**Vector2** The reaction force of the joint in the specified `timeStep`.

### Description

Gets the reaction force of the joint given the specified `timeStep`.

When a joint tries to constrain a Rigidbody2D it may need to apply a force to do so. This is known as the reaction force.

Additional resources: reactionForce, breakForce.
