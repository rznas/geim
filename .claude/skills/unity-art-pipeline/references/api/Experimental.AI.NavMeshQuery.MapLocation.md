<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshQuery.MapLocation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | World position for which the closest point on the NavMesh needs to be found. |
| extents | Maximum distance, from the specified `position`, expanding along all three axes, within which NavMesh surfaces are searched. |
| agentTypeID | Identifier for the agent type whose NavMesh surfaces should be selected for this operation. The *Humanoid* agent type exists for all NavMeshes and has an ID of 0. Other agent types can be defined manually through the Editor. A separate NavMesh surface needs to be baked for each agent type. |
| areaMask | Bitmask used to represent areas of the NavMesh that should (value of 1) or shouldn't (values of 0) be sampled. This parameter is optional and defaults to NavMesh.AllAreas if unspecified. Additional resources: Areas and Costs. |

### Returns

**NavMeshLocation** An object with position and valid PolygonId - when a point on the NavMesh has been found.
 An invalid object - when no NavMesh surface with the desired features has been found within the search area. Additional resources: NavMeshQuery.IsValid.

### Description

Finds the closest point and PolygonId on the NavMesh for a given world position.

The search only applies to the specified type of NavMesh surface, for one or more desired area types and is limited to within the specified search area. It does not search for positions on NavMeshLinks or OffMeshLinks.

Nearby NavMesh surfaces directly above or below the specified position are preferred. When there are none up or down within the specified search extents the surfaces closest sideways are sampled.

Additional resources: NavMesh.SamplePosition.
