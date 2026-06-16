<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsScene.OverlapBox.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| center | Center of the box. |
| halfExtents | Half of the size of the box in each dimension. |
| results | The buffer to store the results in. |
| orientation | Rotation of the box. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a box. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**int** The amount of colliders stored in `results`.

### Description

Find all colliders touching or inside of the given box, and store them into the buffer.

Additional resources: Physics.OverlapBoxNonAlloc.
