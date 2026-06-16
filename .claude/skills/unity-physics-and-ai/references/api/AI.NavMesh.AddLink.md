<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh.AddLink.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| link | Object that describes the properties of the link. |

### Returns

**NavMeshLinkInstance** Object that identifies the added link.

### Description

Adds a link to the NavMesh. The link is described by the NavMeshLinkData struct.

Returns an instance identifier for the added link.

The returned instance is valid if the link was successfully added. The instance can be used to later remove the link using RemoveLink().

**Note:** If the area is set to Not Walkable, or if adding a link would exceed the maximum number of active links (65535) the link will fail to be added – and the valid property will be false.

Additional resources: NavMeshLinkInstance, RemoveLink.

### Parameters

| Parameter | Description |
| --- | --- |
| link | Object that describes the properties of the link. |
| position | Translate the link to this position. |
| rotation | Rotate the link to this orientation. |

### Returns

**NavMeshLinkInstance** Object that identifies the added link.

### Description

Adds a link to the NavMesh. The link is described by the NavMeshLinkData struct.

Returns an instance identifier for the added link.

This function is similar to AddLink above, but the position and rotation specified is applied to the start and end positions of the link. The rotation also specifies the local up-axis of the link.

Additional resources: NavMeshLinkInstance, RemoveLink.
