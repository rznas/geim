<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.BindingExtensions.TrackPropertyValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| element | VisualElement tracking a property. |
| property | The SerializedProperty to track. |
| callback | Invoked when the tracked SerializedProperty value changes. |

### Description

Executes the callback when the property value changes. Unity checks properties for changes at regular intervals during the update loop. If no callback is specified, a SerializedPropertyChangeEvent is sent to the target element.
