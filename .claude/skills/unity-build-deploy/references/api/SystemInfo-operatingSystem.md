<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-operatingSystem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Operating system name with version (Read Only).

Returns detailed information about the operating system of the device, including the version. For a simple platform detection, properties like Application.platform or deviceType might be more appropriate. The format depends on the platform:

- **Windows:** `Windows 10 (10.0.19041) 64bit` 
 **Note:** For Windows 11 (Build 22000+), the "64bit" suffix is intentionally omitted (e.g., `Windows 11 (10.0.22621)`).
- **Android:** `Android OS 11 / API-30 (RQ3A.211001.001/7807369)` 
 **Note:** Android OS is reported regardless of the ROM (e.g. LineageOS, OxygenOS).
- **iOS:** `iOS 15.2`
- **macOS:** `Mac OS X 10.15.7`
- **Linux:** `Linux 5.4 Ubuntu 20.04 64bit`

**Note:** On Microsoft Store Apps, it's not easy to identify if you're running 32-bit or 64-bit version of Windows. However, you can query the CPU architecture to find this information. If the CPU is 64-bit, SystemInfo.operatingSystem returns **Windows <version> 64bit**, and if the CPU is 32-bit - **Windows <version>**.

Additional resources: Application.platform, deviceType.
