<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMesh.SetLinkActive.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The link instance whose active state to modify. |
| value | Whether agents can plan paths through, and traverse, the link. When the value is true, agents can plan paths through, and traverse, the link. Otherwise, no paths can use the link instance. |

### Description

Activates or deactivates the link instance. An active link instance can be traversed by agents and used to plan paths, but a deactivated link cannot.

This method changes the state of the link instance immediately. Any path that you calculate afterwards takes into account the new state of the link. When you disable the link instance any paths that have already been calculated through it get a status value of invalid.
 You can call this method at any time to deactivate the link and prevent agents from moving through a section of the game level, for example through a door that connects two rooms. Conversely, you can activate the link and allow the agents to move between the respective game level sections.
 Deactivated links remain connected to the NavMesh surfaces and they do not need to find the connection points again when they are reactivated.
 Any link instance created with the AddLink method is active by default.
 
 This method is available as of 2023.2.
 
 Additional resources: IsLinkActive.
