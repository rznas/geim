<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.ConverterGroup.TrySetValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| container | The container whose property needs to be set. |
| path | The path of the property to set. |
| value | The value to assign to the property. |
| returnCode | The return code of the conversion. |

### Returns

**bool** `true` if the value was set correctly, and `false` otherwise.

### Description

Sets the value of a property at the given path to the given value, using this converter group or the global ones.

This method isn't thread-safe.
