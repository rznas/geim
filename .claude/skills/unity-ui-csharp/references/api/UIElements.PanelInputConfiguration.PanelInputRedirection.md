<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PanelInputConfiguration.PanelInputRedirection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates whether the uGUI EventSystem redirects panel input.

When the uGUI EventSystem redirects panel input, panel components handle the EventSystem events and translate them into equivalent UI Toolkit events if applicable. This allows scenes to contain a mix of UI Toolkit and uGUI content with a common logic.

### Properties

| Property | Description |
| --- | --- |
| AutoSwitch | As long as an EventSystem is active, it serves as the source of input for all UI. Otherwise, UIToolkit's built-in input handles the input. |
| Never | UIToolkit's built-in input handles the input, regardless of whether an EventSystem is active. |
| Always | Input remains disabled until an EventSystem is active, at which point it becomes the input source. Use this mode to dynamically activate or deactivate all UI input by toggling the EventSystem component. |
