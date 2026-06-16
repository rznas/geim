<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RaycastHit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Structure used to get information back from a raycast.

Additional resources: Physics.Raycast, Physics.Linecast, Physics.RaycastAll.

### Properties

| Property | Description |
| --- | --- |
| articulationBody | The ArticulationBody of the collider that was hit. If the collider is not attached to an articulation body then it is null. |
| barycentricCoordinate | The barycentric coordinate of the triangle we hit. |
| collider | The Collider that was hit. |
| colliderEntityId | EntityId of the Collider that was hit. |
| distance | The distance from the ray's origin to the impact point. |
| lightmapCoord | The uv lightmap coordinate at the impact point. |
| normal | The normal of the surface the ray hit. |
| point | The impact point in world space where the ray hit the collider. |
| rigidbody | The Rigidbody of the collider that was hit. If the collider is not attached to a rigidbody then it is null. |
| textureCoord | The uv texture coordinate at the collision location. |
| textureCoord2 | The secondary uv texture coordinate at the impact point. |
| transform | The Transform of the rigidbody or collider that was hit. |
| triangleIndex | The index of the triangle that was hit. |
