<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh.IsLinkActive.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The link instance whose state to query. |

### Returns

**bool** True if agents can plan paths through, and traverse, this instance of the link, otherwise false.

### Description

Determines whether the instance of the link can be used to calculate paths, and if NavMesh agents can move over it.

Use this method to determine if paths for the assigned agent type can traverse this link or not.
 A link instance is active by default regardless of whether the ends connect to NavMesh surfaces or not. To change the link's state, call SetLinkActive. After you remove the link from the running navigation system this method always returns `false`.
 
 This method is available as of 2023.2.
 
 Additional resources: SetLinkActive.
