<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshLinkData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Used for runtime manipulation of links connecting polygons of the NavMesh.

A typical use case is to connect different navigation meshes. Use the NavMesh.AddLink method to instantiate a link with these properties in the navigation system. The NavMesh Link component creates its runtime data in this way.

### Properties

| Property | Description |
| --- | --- |
| agentTypeID | Specifies which agent type this link is available for. |
| area | Area type of the link. |
| bidirectional | If true, the link can be traversed in both directions, otherwise only from start to end position. |
| costModifier | If positive, overrides the pathfinder cost to traverse the link. |
| endPosition | End position of the link. |
| startPosition | Start position of the link. |
| width | If positive, the link will be rectangle aligned along the line from start to end. |
