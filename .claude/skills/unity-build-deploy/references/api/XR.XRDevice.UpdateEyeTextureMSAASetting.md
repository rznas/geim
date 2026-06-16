<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDevice.UpdateEyeTextureMSAASetting.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**void** Nothing.

### Description

Recreates the XR platform's eye texture swap chain with the appropriate anti-aliasing sample count. The reallocation of the eye texture will only occur if the MSAA quality setting's sample count is different from the sample count of the current eye texture. Reallocations of the eye textures will happen at the beginning of the next frame. This is an expensive operation and should only be used when necessary.
