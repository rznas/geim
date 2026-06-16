<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ClosestPointCommand-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| point | Location you want to find the closest point to. |
| colliderInstanceID | The ID of the Collider that you find the closest point on. |
| position | The position of the Collider. |
| rotation | The rotation of the Collider. |
| scale | The global scale of the Collider. |

### Description

Obsolete. Use the constructor with EntityId instead.

Create a ClosestPointCommand using Instance ID of the Collider.

### Parameters

| Parameter | Description |
| --- | --- |
| point | Location you want to find the closest point to. |
| collider | The Collider that you find the closest point on. |
| position | The position of the Collider. |
| rotation | The rotation of the Collider. |
| scale | The global scale of the Collider. |

### Description

Create a ClosestPointCommand using a Collider reference.

Can only be invoked from the main thread, since Unity Components are unavailable off the main thread. In the threaded context, use the other constructor that accepts EntityId instead.

### Parameters

| Parameter | Description |
| --- | --- |
| point | Location you want to find the closest point to. |
| colliderEntityId | The EntityId of the Collider that you find the closest point on. |
| position | The position of the Collider. |
| rotation | The rotation of the Collider. |
| scale | The global scale of the Collider. |

### Description

Create a ClosestPointCommand using EntityId of the Collider.
