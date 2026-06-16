<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ContactPair.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A pair of Colliders that belong to the bodies in the parent ContactPairHeader struct.

Contains an array of ContactPairPoints that can be retrieved using the GetContactPoint method.

### Properties

| Property | Description |
| --- | --- |
| collider | The first Collider component of the ContactPair. |
| colliderEntityId | EntityId of the first Collider in the ContactPair. |
| contactCount | The number of ContactPairPoints that this pair contains. |
| impulseSum | Total impulse sum of the pair. |
| isCollisionEnter | Whether or not this pair is equivalent to a pair reported in MonoBehaviour.OnCollisionEnter events. |
| isCollisionExit | Whether or not this pair is equivalent to a pair reported in MonoBehaviour.OnCollisionExit events. |
| isCollisionStay | Whether or not this pair is equivalent to a pair reported in MonoBehaviour.OnCollisionStay events. |
| otherCollider | The second Collider component of the ContactPair. |
| otherColliderEntityId | EntityId of the second Collider in the ContactPair. |

### Public Methods

| Method | Description |
| --- | --- |
| CopyToNativeArray | Copies the internal ContactPairPoint buffer to the provided buffer. |
| GetContactPoint | Gets the ContactPairPoint at the provided index of this pair. |
| GetContactPointFaceIndex | Get the index of a face that a particular contact point belongs to in this ContactPairPoint. |
