<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshLinkInstance-owner.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get or set the owning Object.

If the instance is not valid, setting the owner has no effect and getting it returns null.
 Use this property to reference the component that created the link, or more generally, any object that contains useful information about this specific link active in the navigation system. The owner is null for any new link instance created with NavMesh.AddLink. You can, at any time, assign any Object to this property and retrieve that reference later. 
 When the link instance is removed the owner property returns null once again.
 
 Additional resources: OffMeshLinkData.owner, NavMesh.GetLinkOwner, NavMesh.SetLinkOwner.
