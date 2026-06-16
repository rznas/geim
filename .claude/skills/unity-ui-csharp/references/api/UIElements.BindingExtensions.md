<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.BindingExtensions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides VisualElement extension methods that implement data binding between INotifyValueChanged fields and SerializedObjects.

### Static Properties

| Property | Description |
| --- | --- |
| prefabOverrideUssClassName | USS class added to element when in prefab override mode. |

### Static Methods

| Method | Description |
| --- | --- |
| Bind | Binds a SerializedObject to fields in the element hierarchy. |
| BindProperty | Binds a property to a field and synchronizes their values. This method finds the property using the field's binding path. |
| TrackPropertyValue | Executes the callback when the property value changes. Unity checks properties for changes at regular intervals during the update loop. If no callback is specified, a SerializedPropertyChangeEvent is sent to the target element. |
| TrackSerializedObjectValue | Executes the callback when the property value changes. Unity checks properties for changes at regular intervals during the update loop. If no callback is specified, a SerializedPropertyChangeEvent is sent to the target element. |
| Unbind | Disconnects all properties bound to fields in the element's hierarchy. |
