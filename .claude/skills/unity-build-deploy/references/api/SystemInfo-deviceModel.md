<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-deviceModel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The model of the device (Read Only).

Exact format of model name is operating system dependent.

- **Windows:** "Model (Manufacturer)" (e.g. `Latitude 7480 (Dell Inc.)`)
- **macOS:** "HardwareModelIdentifier" (e.g. `MacBookPro18,1` or `iMac21,1`)
- **Linux:** `PC`
- **WebGL:** "BrowserName Version" (e.g. `Chrome 120.0.0.0`)
- **QNX:** `SoC`

The returned value will usually be similar to the one shown in the operating system's "About Device" or "System Information" screen.

Additional resources: deviceType.
