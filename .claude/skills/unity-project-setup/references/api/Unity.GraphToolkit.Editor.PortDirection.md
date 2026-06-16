<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.PortDirection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the direction of a port in the graph.

Use PortDirection to indicate whether a port receives or sends information. This enum supports bitwise operations which allows for combinations of values, although most ports are either Input or Output. The direction affects how the port is used in the graph. Input ports receive connections and typically appear on the left side of a node. Output ports initiate connections and typically appear on the right side of a node. Use None when a port has no fixed direction.

### Properties

| Property | Description |
| --- | --- |
| None | The port does not have a fixed direction. It may receive or send information. |
| Input | The port receives information. It accepts connections from output ports. |
| Output | The port sends information. It creates connections to input ports. |
