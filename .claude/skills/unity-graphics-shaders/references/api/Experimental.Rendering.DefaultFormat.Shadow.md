<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.DefaultFormat.Shadow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents the default platform specific shadow format.

To create a RenderTexture that can be used as a shadow map, you also need to set the ShadowSamplingMode using RenderTextureDescriptor.shadowSamplingMode. Unity does this automatically if you call the RenderTexture constructor using the `DefaultFormat.Shadow` format.
