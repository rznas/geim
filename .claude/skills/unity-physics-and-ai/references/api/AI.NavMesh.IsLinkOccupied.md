<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh.IsLinkOccupied.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The link instance whose state to query. |

### Returns

**bool** True if an agent is currently traversing the link, otherwise false.

### Description

Determines whether or not a NavMesh agent is currently using this link.

Use this method to determine if your NavMesh agent can move onto the specified NavMesh link instance. Only one NavMesh agent can traverse a NavMesh link instance at any one time, so your agent can't move onto a NavMesh link instance that is already occupied. A NavMesh link instance is occupied when any NavMesh agent moves onto the link as part of the path the agent has calculated to the destination. When the agent moves off of the link, either automatically or through a call to NavMeshAgent.CompleteOffMeshLink, the link instance is no longer occupied.
 
 This method is available as of 2023.2.
 
 Additional resources: NavMeshAgent.isOnOffMeshLink.
