<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.IPortBuilder_1.WithConnectorUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| connectorUI | The PortConnectorUI shape to use. |

### Returns

**T** The current builder instance for method chaining.

### Description

Configures the connector UI shape for the port being built.

Use this method to control the appearance of the port’s connector in the UI. The PortConnectorUI enum provides options such as PortConnectorUI.Circle or PortConnectorUI.Arrowhead. These shapes help users visually distinguish between different kinds of ports or flows. This setting affects only the UI and does not impact port behavior or connectivity. Call this method before IPortBuilder_1.Build to ensure the selected style is applied to the constructed port.
