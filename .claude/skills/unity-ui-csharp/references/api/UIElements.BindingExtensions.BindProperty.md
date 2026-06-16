<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.BindingExtensions.BindProperty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| field | VisualElement field editing a property. |
| obj | Root SerializedObject containing the bindable property. |

### Returns

**SerializedProperty** The serialized object that owns the bound property.

### Description

Binds a property to a field and synchronizes their values. This method finds the property using the field's binding path.

### Parameters

| Parameter | Description |
| --- | --- |
| field | VisualElement field editing a property. |
| property | The SerializedProperty to bind. |

### Description

Binds a property to a field and synchronizes their values.
