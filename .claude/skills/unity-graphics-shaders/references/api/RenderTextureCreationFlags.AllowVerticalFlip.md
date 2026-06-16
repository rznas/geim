<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTextureCreationFlags.AllowVerticalFlip.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Clear this flag when a RenderTexture is a VR eye texture and the device does not automatically flip the texture when being displayed. This is platform specific and It is set by default. This flag is only cleared when part of a RenderTextureDesc that is returned from GetDefaultVREyeTextureDesc or other VR functions that return a RenderTextureDesc. Currently, only Hololens eye textures need to clear this flag.
