<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HDROutputSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides access to HDR display settings and information.

### Static Properties

| Property | Description |
| --- | --- |
| displays | The list of currently connected displays with possible HDR availability. |
| main | The HDROutputSettings for the main display. |

### Properties

| Property | Description |
| --- | --- |
| active | Describes whether HDR output is currently active on the display. It is true if this is the case, and @@false@ otherwise. |
| automaticHDRTonemapping | Describes whether Unity performs HDR tonemapping automatically. |
| available | Describes whether HDR is currently available on your primary display and that you have HDR enabled in your Unity Project. It is true if this is the case, and false otherwise. |
| displayColorGamut | The ColorGamut used to output to the active HDR display. |
| format | The RenderTextureFormat of the display buffer for the active HDR display. |
| graphicsFormat | The GraphicsFormat of the display buffer for the active HDR display. |
| HDRModeChangeRequested | Describes whether the user has requested to change the HDR Output Mode. It is true if this is the case, and false otherwise. |
| maxFullFrameToneMapLuminance | Maximum input luminance at which gradation is preserved even when the entire screen is bright. |
| maxToneMapLuminance | Maximum input luminance at which gradation is preserved when 10% of the screen is bright. |
| minToneMapLuminance | Minimum input luminance at which gradation is identifiable. |
| paperWhiteNits | The base luminance of a white paper surface in nits or candela per square meter (cd/m2). |

### Public Methods

| Method | Description |
| --- | --- |
| RequestHDRModeChange | Use this function to request a change in the HDR Output Mode and in the value of HDROutputSettings.active. |
