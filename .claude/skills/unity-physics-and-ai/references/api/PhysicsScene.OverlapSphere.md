<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsScene.OverlapSphere.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Center of the sphere. |
| radius | Radius of the sphere. |
| results | The buffer to store the results into. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a sphere. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**int** The number of colliders detected that overlap with the sphere and were stored in the `results` array. The return value cannot exceed the size of the `results` array.

### Description

Computes and stores colliders touching or inside the sphere into the provided buffer.

Additional resources: Physics.OverlapSphereNonAlloc.
