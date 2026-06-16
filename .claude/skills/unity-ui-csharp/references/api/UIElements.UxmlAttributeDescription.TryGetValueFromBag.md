<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UxmlAttributeDescription.TryGetValueFromBag.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| bag | A bag contains attributes and their values as strings. |
| cc | The context in which the values are retrieved. |
| converterFunc | A function to convert a string value to type T. |
| defaultValue | The value to return if the attribute is not found in the bag. |
| value | If the attribute could be retrieved, the retrieved value converted by the conversion function or the default value if the retrieved value could not de converted. |

### Returns

**bool** True if the value is found, false otherwise.

### Description

Tries to get the attribute value from the attribute bag.
