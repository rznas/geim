<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer-targetTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

RenderTexture to draw to when VideoPlayer.renderMode is set to VideoRenderMode.RenderTexture.

If the RenderTexture is of TextureDimension.Tex2D the video frames will be drawn directly into this target. For optimal performance, RenderTexture.width and RenderTexture.height should match those of the video media exactly.

If the RenderTexture is of TextureDimension.Cube the video frames will be interpreted as a cubemap in one of the 4 supported layouts (horizontal or vertical orientation of a cross or strip layout) based on video aspect ratio. The cubemap faces of the video frame are drawn to the 6 faces of the RenderTexture. For a one-to-one pixel mapping, RenderTexture.width and RenderTexture.height should match the size of the individual faces contained within the video media's cubemap (eg. for a 2048x1536 horizontal cross cubemap video, the RenderTexture cube size should be set to 512x512).
