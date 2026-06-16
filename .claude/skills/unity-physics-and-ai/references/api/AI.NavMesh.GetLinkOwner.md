<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh.GetLinkOwner.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The identifier of the link instance whose owner needs to be retrieved. |

### Returns

**Object** The object that was passed into SetLinkOwner for the specified link instance.
 Returns `null` when no owner object has been assigned or when the link instance is not valid.

### Description

Gets the object, if any, that is associated with the link instance.

Use this method to obtain a reference to the component that created the link, or more generally, to any object that contains useful information about this specific link that is active in the navigation system. We refer to that object as the "owner". The owner is null for any new link instance created with AddLink. Therefore you need to first call SetLinkOwner in order to retrieve the same object later. This "owner" is also referenced by the OffMeshLinkData.owner property when you query for the next link on a NavMesh agent's path.
 When the link instance is removed the owner property returns null once again.
 
 Additional resources: OffMeshLinkData.owner.
