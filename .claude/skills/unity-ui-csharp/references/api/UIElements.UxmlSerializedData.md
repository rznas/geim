<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UxmlSerializedData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Generates an instance of the declaring element when the UxmlElementAttribute is used in a custom control.

### Public Methods

| Method | Description |
| --- | --- |
| CreateInstance | Returns an instance of the declaring element. |
| Deserialize | Applies serialized field values to a compatible visual element. |

### Static Methods

| Method | Description |
| --- | --- |
| Register | This is used by the code generator when a custom control is using the UxmlElementAttribute. You should not need to call it. |
| ShouldWriteAttributeValue | Determines if an attribute should be applied during Deserialize. |
