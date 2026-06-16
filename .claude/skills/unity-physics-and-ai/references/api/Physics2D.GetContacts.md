<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.GetContacts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| collider | The Collider to retrieve contacts for. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<ContactPoint2D>** A collection of ContactPoint2D containing the results. The collection does not allocate any managed memory but must be disposed of.

### Description

Retrieves all contact points in contact with the `Collider`, with the results filtered by the `contactFilter2D`.

### Parameters

| Parameter | Description |
| --- | --- |
| collider1 | The Collider to check if it has contacts against `collider2`. |
| collider2 | The Collider to check if it has contacts against `collider1`. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<ContactPoint2D>** A collection of ContactPoint2D containing the results. The collection does not allocate any managed memory but must be disposed of.

### Description

Retrieves all contact points in for contacts between with the `collider1` and `collider2`, with the results filtered by the `contactFilter2D`.

### Parameters

| Parameter | Description |
| --- | --- |
| rigidbody | The Rigidbody to retrieve contacts for. All Colliders attached to this Rigidbody will be checked. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<ContactPoint2D>** A collection of ContactPoint2D containing the results. The collection does not allocate any managed memory but must be disposed of.

### Description

Retrieves all Colliders in contact with any of the Collider(s) attached to this Rigidbody, with the results filtered by the `contactFilter2D`.

### Parameters

| Parameter | Description |
| --- | --- |
| Collider | The Collider to retrieve contacts for. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| contacts | A list of ContactPoint2D used to receive the results. |

### Returns

**int** Returns the number of contacts placed in the `contacts` list.

### Description

Retrieves all contact points in contact with the `Collider`, with the results filtered by the `contactFilter2D`.

Contacts involving a Collider2D set to be a trigger will never be returned here because trigger Colliders do not have contact points. This is true even if the `contactFilter` has its ContactFilter2D.useTriggers set to true.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

The results can also be filtered by the `contactFilter`.

Additional resources: Collider2D.GetContacts and Rigidbody2D.GetContacts.

### Parameters

| Parameter | Description |
| --- | --- |
| Collider | The Collider to retrieve contacts for. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| Colliders | A list of Collider2D used to receive the results. |

### Returns

**int** Returns the number of Colliders placed in the `Colliders` list.

### Description

Retrieves all Colliders in contact with the `Collider`, with the results filtered by the `contactFilter2D`.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

The results can also be filtered by the `contactFilter`.

Additional resources: Collider2D.GetContacts and Rigidbody2D.GetContacts.

### Parameters

| Parameter | Description |
| --- | --- |
| collider1 | The Collider to check if it has contacts against `collider2`. |
| collider2 | The Collider to check if it has contacts against `collider1`. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| contacts | A list of ContactPoint2D used to receive the results. |

### Returns

**int** Returns the number of contacts placed in the `contacts` list.

### Description

Retrieves all contact points in for contacts between with the `collider1` and `collider2`, with the results filtered by the `contactFilter2D`.

Contacts involving a Collider2D set to be a trigger will never be returned here because trigger Colliders do not have contact points. This is true even if the `contactFilter` has its ContactFilter2D.useTriggers set to true.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

The results can also be filtered by the `contactFilter`.

Additional resources: Collider2D.GetContacts and Rigidbody2D.GetContacts.

### Parameters

| Parameter | Description |
| --- | --- |
| rigidbody | The Rigidbody to retrieve contacts for. All Colliders attached to this Rigidbody will be checked. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| Colliders | A list of Collider2D used to receive the results. |

### Returns

**int** Returns the number of Colliders placed in the `Colliders` list.

### Description

Retrieves all Colliders in contact with any of the Collider(s) attached to this Rigidbody, with the results filtered by the `contactFilter2D`.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

The results can also be filtered by the `contactFilter`.

Additional resources: Collider2D.GetContacts and Rigidbody2D.GetContacts.

### Parameters

| Parameter | Description |
| --- | --- |
| rigidbody | The Rigidbody to retrieve contacts for. All Colliders attached to this Rigidbody will be checked. |
| contactFilter | Returns the number of contacts placed in the `contacts` list. |
| contacts | A list of ContactPoint2D used to receive the results. |

### Returns

**int** Returns the number of contacts placed in the `contacts` list.

### Description

Retrieves all Colliders in contact with any of the Collider(s) attached to this Rigidbody, with the results filtered by the `contactFilter2D`.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

The results can also be filtered by the `contactFilter`.

Additional resources: Collider2D.GetContacts and Rigidbody2D.GetContacts.

### Parameters

| Parameter | Description |
| --- | --- |
| Collider | The Collider to retrieve contacts for. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| contacts | An array of ContactPoint2D used to receive the results. |

### Returns

**int** Returns the number of contacts placed in the `contacts` array.

### Description

Retrieves all contact points in contact with the `Collider`, with the results filtered by the `ContactFilter2D`.

Contacts involving a Collider2D set to be a trigger will never be returned here because trigger Colliders do not have contact points. This is true even if the `contactFilter` has its ContactFilter2D.useTriggers set to true.

When retrieving contacts, you should ensure that the provided array is large enough to contain all the contacts you are interested in. Typically the array would be reused therefore it would be a size to return a reasonable quantity of contacts. This function also means that no allocations occur which means no work is produced for the garbage collector.

Additional resources: Collider2D.GetContacts and Rigidbody2D.GetContacts.

### Parameters

| Parameter | Description |
| --- | --- |
| Collider | The Collider to retrieve contacts for. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| Colliders | An array of Collider2D used to receive the results. |

### Returns

**int** Returns the number of Colliders placed in the `Colliders` array.

### Description

Retrieves all Colliders in contact with the `Collider`, with the results filtered by the `ContactFilter2D`.

When retrieving contacts, you should ensure that the provided array is large enough to contain all the contacts you are interested in. Typically the array would be reused therefore it would be a size to return a reasonable quantity of contacts. This function also means that no allocations occur which means no work is produced for the garbage collector.

Additional resources: Collider2D.GetContacts and Rigidbody2D.GetContacts.

### Parameters

| Parameter | Description |
| --- | --- |
| collider1 | The Collider to check if it has contacts against `collider2`. |
| collider2 | The Collider to check if it has contacts against `collider1`. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| contacts | An array of ContactPoint2D used to receive the results. |

### Returns

**int** Returns the number of contacts placed in the `contacts` array.

### Description

Retrieves all contact points in for contacts between with the `collider1` and `collider2`, with the results filtered by the `ContactFilter2D`.

Contacts involving a Collider2D set to be a trigger will never be returned here because trigger Colliders do not have contact points. This is true even if the `contactFilter` has its ContactFilter2D.useTriggers set to true.

When retrieving contacts, you should ensure that the provided array is large enough to contain all the contacts you are interested in. Typically the array would be reused therefore it would be a size to return a reasonable quantity of contacts. This function also means that no allocations occur which means no work is produced for the garbage collector.

Additional resources: Collider2D.GetContacts and Rigidbody2D.GetContacts.

### Parameters

| Parameter | Description |
| --- | --- |
| rigidbody | The rigidbody to retrieve contacts for. All Colliders attached to this rigidbody will be checked. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| contacts | An array of ContactPoint2D used to receive the results. |

### Returns

**int** Returns the number of contacts placed in the `contacts` array.

### Description

Retrieves all contact points in contact with any of the Collider(s) attached to this rigidbody, with the results filtered by the `ContactFilter2D`.

Contacts involving a Collider2D set to be a trigger will never be returned here because trigger Colliders do not have contact points. This is true even if the `contactFilter` has its ContactFilter2D.useTriggers set to true.

When retrieving contacts, you should ensure that the provided array is large enough to contain all the contacts you are interested in. Typically the array would be reused therefore it would be a size to return a reasonable quantity of contacts. This function also means that no allocations occur which means no work is produced for the garbage collector.

Additional resources: Collider2D.GetContacts and Rigidbody2D.GetContacts.

### Parameters

| Parameter | Description |
| --- | --- |
| rigidbody | The rigidbody to retrieve contacts for. All Colliders attached to this rigidbody will be checked. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| Colliders | An array of Collider2D used to receive the results. |

### Returns

**int** Returns the number of Colliders placed in the `Colliders` array.

### Description

Retrieves all Colliders in contact with any of the Collider(s) attached to this rigidbody, with the results filtered by the `ContactFilter2D`.

When retrieving contacts, you should ensure that the provided array is large enough to contain all the contacts you are interested in. Typically the array would be reused therefore it would be a size to return a reasonable quantity of contacts. This function also means that no allocations occur which means no work is produced for the garbage collector.

Additional resources: Collider2D.GetContacts and Rigidbody2D.GetContacts.
