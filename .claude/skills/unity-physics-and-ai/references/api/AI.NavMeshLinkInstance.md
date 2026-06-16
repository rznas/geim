<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshLinkInstance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a link available for pathfinding.

You obtain a valid object when you call NavMesh.AddLink to create one specific link in the navigation system. Conversely, you need to pass it into NavMesh.RemoveLink to remove that instance of the link from the system. Use this object to check or modify the state of the link instance by calling the following methods: NavMesh.IsLinkValid, NavMesh.IsLinkOccupied, NavMesh.IsLinkActive, NavMesh.SetLinkActive, NavMesh.GetLinkOwner and NavMesh.SetLinkOwner.
 
 Empty objects created when you instantiate this struct do not represent any link that exists in the navigation system. The NavMesh.IsLinkValid and NavMesh.IsLinkActive methods return a value of `false` for objects created in this manner.
