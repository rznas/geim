<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUserBuildSettings-windowsDevicePortalPassword.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the Windows DevicePortal password for the device to deploy and launch the UWP app on when using Build and Run.

This parameter is only necessary if WDP authentication is enabled on the target device, otherwise it can left empty. This string is not saved with the other settings and must be re-entered after the editor is closed. 
**Note:** This is *not* the Windows logon password but a separate credential specific to DevicePortal. Please refer to the [Microsoft DevicePortal documentation](https://docs.microsoft.com/en-us/windows/uwp/debug-test-perf/device-portal) for more details.
