<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.DataBinding.UpdateSource.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Context object containing the necessary information to resolve a binding. |
| value | The resolved value from the data source. |

### Returns

**void** A BindingResult indicating if the binding update succeeded or not.

### Description

Callback called to allow derived classes to update the data source with the resolved value when a change from the UI is detected.
