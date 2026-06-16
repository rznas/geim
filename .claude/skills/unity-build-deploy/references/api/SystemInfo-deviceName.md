<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-deviceName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The user defined name of the device (Read Only).

This is typically the name of the device as it appears on the networks.

**Android**: There's no API for returning the device name. Therefore, Unity attempts to read `device_name` and `bluetooth_name` from secure system settings. If no value is found, `<unknown>` string is returned.

Will return SystemInfo.unsupportedIdentifier on platforms which don't support this property.

Additional resources: deviceModel.
