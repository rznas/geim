<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TreeInstance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains information about a tree placed in the Terrain game object.

This struct can be accessed from the TerrainData Object.

### Properties

| Property | Description |
| --- | --- |
| color | Color of this instance. |
| heightScale | Height scale of this instance (compared to the prototype's size). |
| lightmapColor | Lightmap color calculated for this instance. |
| position | The position of the tree in the local space of the terrain. The value is a Vector3 clamped to 0-1, and describes a percentage of the terrain width, length, and height. |
| prototypeIndex | Index of this instance in the TerrainData.treePrototypes array. |
| rotation | Read-only.Rotation of the tree on X-Z plane (in radians). |
| widthScale | Width scale of this instance (compared to the prototype's size). |
