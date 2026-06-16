<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D.GetContacts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<ContactPoint2D>** A collection of ContactPoint2D containing the results. The collection does not allocate any managed memory but must be disposed of.

### Description

Retrieves all contact points for this Collider, with the results filtered by the `contactFilter`.

### Parameters

| Parameter | Description |
| --- | --- |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| contacts | A list of ContactPoint2D used to receive the results. |

### Returns

**int** Returns the number of contacts placed in the `contacts` list.

### Description

Retrieves all contact points for this Collider, with the results filtered by the `contactFilter`.

Contacts involving a Collider2D set to be a trigger will never be returned here because trigger Colliders do not have contact points.

The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

Additional resources: Rigidbody2D.GetContacts and Physics2D.GetContacts.

### Parameters

| Parameter | Description |
| --- | --- |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| colliders | A list of Collider2D used to receive the results. |

### Returns

**int** Returns the number of contacts placed in the `colliders` list.

### Description

Retrieves all colliders in contact with this Collider, with the results filtered by the `contactFilter`.

The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

Additional resources: Rigidbody2D.GetContacts and Physics2D.GetContacts.

### Parameters

| Parameter | Description |
| --- | --- |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| contacts | An array of ContactPoint2D used to receive the results. |

### Returns

**int** Returns the number of contacts placed in the `contacts` array.

### Description

Retrieves all contact points for this Collider, with the results filtered by the `contactFilter`.

Contacts involving a Collider2D set to be a trigger will never be returned here because trigger Colliders do not have contact points. This is true even if the `contactFilter` has its ContactFilter2D.useTriggers set to true.

You should pass an array that is large enough to contain all the contacts you want returned. This array would typically be reused so it should be of a size that can return a reasonable quantity of contacts. No allocations occur in this function which means no work is produced for the garbage collector.

Additional resources: Rigidbody2D.GetContacts and Physics2D.GetContacts.

### Parameters

| Parameter | Description |
| --- | --- |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| colliders | An array of Collider2D used to receive the results. |

### Returns

**int** Returns the number of colliders placed in the `colliders` array.

### Description

Retrieves all colliders in contact with this Collider, with the results filtered by the `contactFilter`.

You should pass an array that is large enough to contain all the contacts you want returned. This array would typically be reused so it should be of a size that can return a reasonable quantity of contacts. No allocations occur in this function which means no work is produced for the garbage collector.

Additional resources: Rigidbody2D.GetContacts and Physics2D.GetContacts.
