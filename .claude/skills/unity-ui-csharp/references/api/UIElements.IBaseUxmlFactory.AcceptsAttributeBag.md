<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IBaseUxmlFactory.AcceptsAttributeBag.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| bag | The attribute bag. |
| cc | The creation context. |

### Returns

**bool** True if the factory accepts the content of the attribute bag. False otherwise.

### Description

Returns true if the factory accepts the content of the attribute bag.

Use this function to validate the content of the attribute bag against the requirements of your factory. If a required attribute is missing or if an attribute value is incorrect, return false. Otherwise, if the bag content is acceptable to your factory, return true.
