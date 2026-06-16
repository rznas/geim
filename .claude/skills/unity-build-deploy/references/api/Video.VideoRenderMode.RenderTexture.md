<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoRenderMode.RenderTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Draw video content into a RenderTexture.

Use this setting to play your video on a 3D surface in your scene. For example, you can use this to show videos on TV/computer screens in your scene. You can display your video on multiple objects that share the same RenderTexture. You can also use this to add post-processing effects and shaders to your video content. If you want to show the video on one object, it might be more efficient to use MaterialOverride instead. When you use this mode, if the target RenderTexture has the same resolution as the content played by the VideoPlayer, this will enable an internal optimization that saves a texture copy, which skips unnecessary steps and improves performance.
