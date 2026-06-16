<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/D3D12GraphicsDeviceType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Graphics device underlying backend API type.

Identifies whether the graphics device used to run D3D12 is discrete or integrated. If the type of graphics device is not relevant to the operation or usage, you can use the D3D12GraphicsDeviceType.GfxDeviceTypeDontCare value.

### Properties

| Property | Description |
| --- | --- |
| DoNotCare | The graphics device type is irrelevant to the usage. |
| Discrete | The graphics device is discrete. In other words, the device is a separate component from the CPU and has its own dedicated video memory. |
| Integrated | The graphics device is integrated. In other words, the device is built into the CPU and shares system memory with it. |
