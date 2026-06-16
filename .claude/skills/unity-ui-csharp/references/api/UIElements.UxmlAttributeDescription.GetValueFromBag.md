<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UxmlAttributeDescription.GetValueFromBag.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| bag | A bag containing attributes and their values as strings. |
| cc | The context in which the values are retrieved. |
| converterFunc | A function to convert a string value to type T. |
| defaultValue | The value to return if the attribute is not found in the bag. |

### Returns

**T** The attribute value from the bag, or defaultValue if the attribute is not found.

### Description

Get the attribute value from the attribute bag.

The attribute is looked up using name. If it is not found, each obsoleteNames is tried in turn, from first to last.
