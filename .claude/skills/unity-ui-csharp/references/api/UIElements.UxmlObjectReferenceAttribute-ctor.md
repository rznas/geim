<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UxmlObjectReferenceAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Declares that a field or property is associated with nested UXML objects.

### Parameters

| Parameter | Description |
| --- | --- |
| uxmlName | The name of the nested UXML element that the UXML Objects are serialized to. **Note**: This field can not be null or empty. |

### Description

Declares that a field or property is associated with nested UXML objects.

### Parameters

| Parameter | Description |
| --- | --- |
| uxmlName | The name of the nested UXML element that the UXML Objects are serialized to. **Note**: A null or empty value will result in the objects being serialized into the root. |
| acceptedTypes | In UI Builder, when adding a UXML Object to a field that has multiple derived types, a dropdown list appears with a selection of available types that can be added to the field. By default, this list comprises all types that inherit from the UXML object type. You can use a parameter to specify a list of accepted types to be displayed, rather than showing all available types. |

### Description

Declares that a field or property is associated with nested UXML objects.
