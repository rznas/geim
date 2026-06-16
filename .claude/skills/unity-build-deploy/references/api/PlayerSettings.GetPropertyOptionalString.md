<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.GetPropertyOptionalString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Name of the property. |
| value | Variable, to which to store the value of the property, if set. |
| target | An optional build target group, to which the property applies. |

### Returns

**bool** True if property was set and it's value assigned to given variable.

### Description

Searches for property and assigns it's value to given variable.

Property is not required to exist. If it doesn't exist, value variable will not be changed and this method will return false.
