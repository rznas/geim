<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GraphView.PlacematContainer.GetPortCenterOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| port | The specific port. |
| overriddenPosition | The overridden position, if the port is overridden. Set to Vector2.zero otherwise. |

### Returns

**bool** Returns true if the port center is overridden. Returns false otherwise

### Description

Gets another location for a specific port and checks if the port has an overridden position.

Use this method for when nodes are hidden by a collapsed placemat and the edges redirect elsewhere.
