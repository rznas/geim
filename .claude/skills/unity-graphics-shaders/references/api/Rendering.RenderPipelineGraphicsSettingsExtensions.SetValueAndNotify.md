<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipelineGraphicsSettingsExtensions.SetValueAndNotify.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| settings | The <see cref="IRenderPipelineGraphicsSettings"/> instance that contains the property. |
| currentPropertyValue | The current value. |
| newValue | The new value. |
| propertyName | The property name. It can be inferred automatically. |

### Description

Sets the value of a given property. If the new value is different from the previous one, the method raises a notification of the change.
