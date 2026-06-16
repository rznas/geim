<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D-compositeOrder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The composite operation order to be used when a CompositeCollider2D is used.

When this Collider2D is using any composite operation other than Collider2D.CompositeOperation.None, the composite operation uses the previous composite operation results on the CompositeCollider2D as the input and applies this Collider2D geometry using its selected Collider2D.compositeOperation.

The composite order is a simple integer value that is first sorted into ascending order by the CompositeCollider2D before it applies the composite operations with the lowest value being executed first in order up to the highest values. When the composite order values are identical, the order is undefined. When using only Collider2D.CompositeOperation.Merge operations, this order is irrelevant to the final result.

Using this order, it is possible to control which previous Collider2D that are also using the CompositeCollider2D are affected by this composite operation.

**NOTE:** After sorting the composite order for all Collider2D, the first composite operation of Collider2D.CompositeOperation.Merge will always used, independent of that Collider2D.compositeOperation property setting. This is due to the fact that the first operation has no input geometry for the operation to complete and only the merge (OR) composite operation results in any geometry!

Additional resources: CompositeOperation, Collider2D.compositeOperation and CompositeCollider2D.
