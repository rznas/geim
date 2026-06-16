<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModifiableContactPair.GetFaceIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| i | Index of the contact point. |

### Returns

**uint** Index of a face this contact point belongs to.

### Description

Get the index of a face a particular contact point belongs to in this contact pair. Use this with Mesh.triangles.

Only valid if one of the colliders in this pair is a non-convex MeshCollider. In this case, that collider will always be the second shape of the pair. A value of 0xffffFFFF indicates an error, which could be none of the Colliders were non-convex MeshColliders, or that the contact point index was out of bounds.
