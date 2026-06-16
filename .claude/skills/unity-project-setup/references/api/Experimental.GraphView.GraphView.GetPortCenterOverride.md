<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GraphView.GraphView.GetPortCenterOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| port | The specific port. |
| overriddenPosition | The overridden position, if the port is overridden. Set to Vector2.zero otherwise. |

### Returns

**bool** Returns true if the port center is overridden, false otherwise.

### Description

Gets another location for a specific port and checks if the port has an overridden position.

Used when nodes are hidden and edges redirect elsewhere.
