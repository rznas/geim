<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.OffMeshLinkData-owner.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get the object used to create the NavMesh link represented by the data in this struct.

If the link has been instantiated by a call to NavMesh.AddLink then this property returns the object that might have been associated to that instance with a call to NavMesh.SetLinkOwner. If that link instance has no owner assigned to it then this property returns null.
 If the link was instantiated by an OffMeshLink component then the owner returns a reference to that component.
 To effectively use this property in your scripts you need to determine the exact type of the returned object. To do that cast the object to the types that you use in your project to create NavMesh links.
 For automatically-generated Jump or Drop links, this property returns null.
 
 Additional resources: NavMesh.SetLinkOwner.
