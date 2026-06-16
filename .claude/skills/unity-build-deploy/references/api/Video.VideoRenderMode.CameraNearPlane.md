<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoRenderMode.CameraNearPlane.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Draw video content in front of a camera's scene.

Scene content is visible through any transparent areas of the video content.

Use for cutscenes, splashscreens and videos that overlay the scene. Since the VideoPlayer has a transparency control, you can use this render mode to display the video on top of an active scene and still see as much of the scene as you want behind it. To control the transparency, use VideoPlayer.targetCameraAlpha.

The Camera clipping planes determine where video content is rendered. Video content is offset by a factor of 0.00005. To render scene content on top of the video, you have to position it between Camera.nearClipPlane and Camera.nearClipPlane + (Camera.farClipPlane - Camera.nearClipPlane) * 0.00005.
