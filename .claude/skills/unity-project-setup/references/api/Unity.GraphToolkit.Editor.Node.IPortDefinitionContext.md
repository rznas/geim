<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.Node.IPortDefinitionContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface that provides methods to define input and output ports during Node.OnDefinePorts execution.

Use this interface within Node.OnDefinePorts to declare the ports a node exposes. Ports define how the node connects to other nodes by specifying inputs and outputs.

### Public Methods

| Method | Description |
| --- | --- |
| AddInputPort | Adds a new input port. |
| AddOutputPort | Adds a new output port with the specified name. |
