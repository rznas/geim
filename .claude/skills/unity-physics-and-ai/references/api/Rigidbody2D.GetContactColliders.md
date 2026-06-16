<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.GetContactColliders.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| allocator | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |

### Returns

**ColliderArray2D** A collection of Collider2D containing the results. The collection does not allocate any managed memory but must be disposed of.

### Description

Retrieves all colliders in contact with this Rigidbody, with the results filtered by the `contactFilter`.
