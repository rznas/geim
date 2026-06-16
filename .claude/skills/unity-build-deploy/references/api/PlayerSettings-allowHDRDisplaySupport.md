<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-allowHDRDisplaySupport.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Prepare the application to encode images for an HDR display.

When you enable `allowHDRDisplaySupport`, the application build includes all the resources, such as shaders, that are required to correctly encode the final output for an HDR display. 

Disabling this setting also disables PlayerSettings.useHDRDisplay because you cannot use a display in HDR mode without the required resources. 

Enable this setting without enabling PlayerSettings.useHDRDisplay if you don't want to use the main display in HDR mode, but do want to use an XR Display in HDR mode. 

Additional resources: PlayerSettings.useHDRDisplay.
