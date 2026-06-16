<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.IVariable.VariableKind.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets the kind of the variable, such as Local, Input, or Output.

This property defines the scope of the variable. Use VariableKind.Local for variables used only within the current graph. Use VariableKind.Input or VariableKind.Output to expose variables to or from a subgraph. This value does not determine the PortDirection of the port on the variable node.
