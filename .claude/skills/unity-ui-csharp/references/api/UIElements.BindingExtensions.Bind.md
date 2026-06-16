<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.BindingExtensions.Bind.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| element | Root VisualElement containing IBindable fields. |
| obj | Data object. |

### Description

Binds a SerializedObject to fields in the element hierarchy.

Don’t call `Bind()` from the @@Editor.CreateInspectorGUI()@2 or `PropertyDrawer.CreatePropertyGUI()` override. It is called automatically on the hierarchy that these methods return.
