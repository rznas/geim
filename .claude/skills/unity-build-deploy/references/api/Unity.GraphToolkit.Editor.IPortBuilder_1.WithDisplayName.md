<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.IPortBuilder_1.WithDisplayName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| displayName | The display name to assign to the port. |

### Returns

**T** The current builder instance for method chaining.

### Description

Configures the display name of the port being built.

Use this method to assign a custom label to the port. This label appears in the user interface next to the port and helps clarify its purpose. Set the display name before calling Build. The value does not affect functionality but improves usability and readability. If not set, the port name passed during creation (see: Node.IPortDefinitionContext.AddInputPort and Node.IPortDefinitionContext.AddOutputPort) is used as the fallback display name.
