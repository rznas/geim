<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CompositeCollider2D.GetCompositedColliders.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Description

TODO.

### Parameters

| Parameter | Description |
| --- | --- |
| colliders | A list of Collider2D that are being composited. |

### Returns

**int** The number of colliders returned.

### Description

When any Collider2D is using any composite operation other than Collider2D.CompositeOperation.None then it is used by this CompositeCollider2D.

The order of the Collider2D returned is sorted into ascending composite order as defined by Collider2D.compositeOrder.

Additional resources: Collider2D.compositeOperation and Collider2D.compositeOrder.
