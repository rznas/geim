<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collision2D.GetContacts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| contacts | An array of ContactPoint2D used to receive the results. |

### Returns

**int** Returns the number of contacts placed in the `contacts` array.

### Description

Retrieves all contact points for contacts between collider and otherCollider.

When retrieving contacts, you should ensure that the provided array is large enough to contain all the contacts you are interested in. The array is usually reused, so it should be large enough to return a reasonable quantity of contacts. This function also means that no allocations occur, which means no work is produced for the garbage collector.

You can check how many contacts are available using contactCount.

Additional resources: Physics2D.GetContacts, Collider2D.GetContacts and Rigidbody2D.GetContacts.

### Parameters

| Parameter | Description |
| --- | --- |
| contacts | A list of ContactPoint2D used to receive the results. |

### Returns

**int** Returns the number of contacts placed in the `contacts` list.

### Description

Retrieves all contact points for contacts between collider and otherCollider.

When retrieving contacts, try to make the provided list large enough to contain all the contacts you need. If the list is not large enough, Unity will automatically increase its size so that it can contain all the contacts. The list is usually reused, so it should be large enough to return a reasonable quantity of contacts. If the list does not have to be increased in size then this function will not allocate any memory, which means no work is produced for the garbage collector.

You can check how many contacts are available using contactCount.

Additional resources: Physics2D.GetContacts, Collider2D.GetContacts and Rigidbody2D.GetContacts.
