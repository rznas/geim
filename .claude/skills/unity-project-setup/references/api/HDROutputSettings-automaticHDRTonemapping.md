<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HDROutputSettings-automaticHDRTonemapping.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes whether Unity performs HDR tonemapping automatically.

Set automaticHDRTonemapping to be true to instruct Unity to perform an automatic tonemapping of your final image onto the HDR display buffer immediately before it is presented to screen. Set automaticHDRTonemapping to be false to perform your own custom HDR tonemapping onto the display buffer of the active HDR display. This could be achieved as a custom post processing stage or by using Camera.OnRenderImage to blit the cameras output to the HDR display buffer using your own tonemapping shader.

Performing your own tonemapping gives greater flexibility over the final image, whereas using Unity's automatic tonemapping provides a simple route to achieving HDR output.

Some platforms don't support automatic HDR Tonemapping (see SystemInfo.hdrDisplaySupportFlags). In this case, the default value of automaticHDRTonemapping is false and can't be changed. If automatic tonemapping is available, it's enabled by default.

The value of automaticHDRTonemapping is ignored if HDR output is not active on the display.
