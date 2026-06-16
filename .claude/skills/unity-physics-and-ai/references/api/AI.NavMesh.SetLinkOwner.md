<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh.SetLinkOwner.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The identifier of the link instance for which you assign an owner. |
| owner | An object that carries useful information in relation to the instance of the link. |

### Description

Associates an object with the instance of a link.

Call GetLinkOwner to retrieve a reference to the assigned object. The OffMeshLinkData.owner property obtained from the path of an agent also points to the object that has been assigned to the link.
 If the instance of the link is not valid, setting the owner has no effect and getting it returns null.
 
 Additional resources: OffMeshLinkData.owner.
