<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D.Overlap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

TODO.

### Description

TODO.

### Parameters

| Parameter | Description |
| --- | --- |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth. Note that normal angle is not used for overlap testing. |
| results | The list to receive results. |

### Returns

**int** Returns the number of results placed in the `results` list.

### Description

Get a list of all Colliders that overlap this Collider.

The integer return value is the number of Colliders that overlap this Collider with the specific Colliders stored in the supplied list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

Additional resources: Rigidbody2D.Overlap.

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position to overlap the Collider at. |
| angle | The angle to overlap the Collider at. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth. Note that normal angle is not used for overlap testing. |
| results | The list to receive results. |

### Returns

**int** Returns the number of results placed in the `results` list.

### Description

Get a list of all Colliders that overlap this Collider.

The integer return value is the number of Colliders that overlap this Collider with the specific Colliders stored in the supplied list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

**NOTE**: The `position` and `angle` used here represent the position of the Rigidbody2D the Collider2D is attached to. If the Collider2D is offset from the center of mass then the Collider2D will be overlapped at the same offset. This can be confusing so it is recommened that only Collider2D that align with the center of mass are used. If not then you must take this into account. If the Collider2D is not attached to a Rigidbody2D, this call cannot be used and will result in a warning.

Additional resources: Rigidbody2D.Overlap.

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position to overlap the Collider at. |
| angle | The angle to overlap the Collider at. |
| results | The list to receive results. |

### Returns

**int** Returns the number of results placed in the `results` list.

### Description

Get a list of all Colliders that overlap this Collider.

The integer return value is the number of Colliders that overlap this Collider with the specific Colliders stored in the supplied list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

**NOTE**: The `position` and `angle` used here represent the position of the Rigidbody2D the Collider2D is attached to. If the Collider2D is offset from the center of mass then the Collider2D will be overlapped at the same offset. This can be confusing so it is recommened that only Collider2D that align with the center of mass are used. If not then you must take this into account. If the Collider2D is not attached to a Rigidbody2D, this call cannot be used and will result in a warning.

Additional resources: Rigidbody2D.Overlap.

### Parameters

| Parameter | Description |
| --- | --- |
| results | The list to receive results. |

### Returns

**int** Returns the number of results placed in the `results` list.

### Description

Get a list of all Colliders that overlap this Collider.

The integer return value is the number of Colliders that overlap this Collider with the specific Colliders stored in the supplied list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

Additional resources: Rigidbody2D.Overlap.

### Parameters

| Parameter | Description |
| --- | --- |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth. Note that normal angle is not used for overlap testing. |
| results | The array to receive results. The size of the array determines the maximum number of results that can be returned. |

### Returns

**int** Returns the number of results placed in the `results` array.

### Description

Get a list of all colliders that overlap this collider.

The integer return value is the number of colliders that overlap this Collider and which could be stored in the supplied array given its length. The results array will not be resized if it doesn't contain enough elements to report all the results. The significance of this is that no memory is allocated for the results and so garbage collection performance is improved when the query is performed frequently.

Additional resources: Rigidbody2D.Overlap.
