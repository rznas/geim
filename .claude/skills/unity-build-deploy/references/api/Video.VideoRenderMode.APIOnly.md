<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoRenderMode.APIOnly.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Don't draw the video content anywhere, but still make it available via the VideoPlayer's texture property in the API.

You can use this render mode to play the video into a Canvas' RawImage. You can assign the VideoPlayer.texture directly to RawImage texture. This lets you use video in your UI elements or any place where the API allows a texture to be assigned.
