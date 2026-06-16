<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.WSATargetFamily.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for the set of Universal Windows Platform device families your application can directly support.

A device family identifies the APIs, system characteristics, and behaviors across a class of devices. It also determines the set of devices on which users can install your application from the Microsoft Store. By default, your application targets the Universal device family. To do this, Microsoft Visual Studio sets Windows.Universal for TargetDeviceFamily.
 For more information, see [Microsoft’s Device families overview](https://docs.microsoft.com/en-ca/uwp/extension-sdks/device-families-overview).
**Important:** Unity writes target families to the package manifest when it builds Universal Windows Platform for the first time. Building into an existing Universal Windows Platform build folder does not update the package manifest and does not apply any changes.

### Properties

| Property | Description |
| --- | --- |
| Desktop | Targets a device family that includes Desktop PCs, laptops, and tablet devices. |
| Mobile | Targets a device family that includes smartphone devices. |
| Xbox | Targets a device family that includes Xbox consoles. |
| Holographic | (Deprecated) Targets a device family that includes HoloLens devices. |
| Team | Targets a device family that includes the Surface Hub. |
| IoT | Targets a device family that includes Internet-of-Things (IoT) devices. |
| IoTHeadless | Targets a device family that includes Internet-of-Things (IoT) devices without any UI. |
