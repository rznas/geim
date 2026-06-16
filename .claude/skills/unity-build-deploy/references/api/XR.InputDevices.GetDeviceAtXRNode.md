<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.InputDevices.GetDeviceAtXRNode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| node | The XRNode that owns the requested device. |

### Returns

**InputDevice** An InputDevice at this [[XR.XRNode].

### Description

Gets the input device at a given XRNode endpoint.

If there is no device at the specified endpoint, the method returns an InputDevice on which a call to InputDevice.IsValid returns false.
