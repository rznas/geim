<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D-compositeOperation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The composite operation to be used by a CompositeCollider2D.

A CompositeCollider2D is used when the composite operation is anything other than Collider2D.CompositeOperation.None.

When a CompositeCollider2D is used, the Collider geometry is merged together using this composite operation with any other Colliders using the same CompositeCollider2D. The composite operation order is controlled with Collider2D.compositeOrder.

**NOTE:** When a CompositeCollider2D is used, the Editor will ignore and not show the Collider2D.sharedMaterial, Collider2D.isTrigger & Collider2D.usedByEffector properties. The same properties on the CompositeCollider2D will be used instead. You should set these properties on the CompositeCollider2D instead. Also, this property is only available with the BoxCollider2D, PolygonCollider2D, CircleCollider2D and CapsuleCollider2D.

Additional resources: Collider2D.compositeOperation, Collider2D.compositeOrder and CompositeCollider2D.
