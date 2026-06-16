<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.IPort.TryGetValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | When successful, contains the value assigned to the port’s field. |

### Returns

**bool** `true` if the port is not connected and a field value is available; otherwise, `false`.

### Description

Tries to retrieve the current value assigned to the port’s UI field.

This method is intended for editor-time inspection of an input port’s value, configured through a field displayed in the UI. If the port is connected, the field is hidden and no value is available, so the method returns `false`. If the value was never explicitly set, this method still returns `true`, and will contain the default value for type `T`.
