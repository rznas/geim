<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRSettings-isDeviceActive.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Read-only value that can be used to determine if the XR device is active.

When true, Unity accepts input from the device and attempts to render to the device's display(s). Note that this returns true even if the device is not currently rendering due to lack of user presence (see XRDevice.userPresence). This can become false if a device is disconnected, could not be initialized (see XRSettings.LoadDeviceByName), or XRSettings.enabled is set to false.

XR output is automatically mirrored to the main display (if applicable). This can be controlled with XRSettings.showDeviceView.

The main window is still controlled by Screen and related APIs.
