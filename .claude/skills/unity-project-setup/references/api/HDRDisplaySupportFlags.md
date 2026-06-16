<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HDRDisplaySupportFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A set of flags that describe the level of HDR display support available on the GPU and driver.

See SystemInfo.hdrDisplaySupportFlags for more details.

### Properties

| Property | Description |
| --- | --- |
| None | Denotes that support for HDR displays is not available for the GPU and the driver. It doesn't indicate HDR compatibility for your monitor's display. |
| Supported | Denotes that support for HDR displays is available for the GPU and the driver. It doesn't indicate HDR compatibility for your monitor's display. |
| RuntimeSwitchable | Denotes that the GPU and driver can change whether the output is performed in HDR or SDR ranges at runtime when connected to a HDR display. |
| AutomaticTonemapping | Denotes if the GPU and driver support automatic tone mapping to HDR displays. |
