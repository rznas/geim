<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer-frame.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The frame index of the currently available frame in VideoPlayer.texture.

The frame index is 0 for the first frame of the clip, 1 for the second frame, and so on. A frame index of -1 indicates that no valid frame is available.

**Note:** On WebGL, because the frame rate is not known, the frame index assumes a rate of 24FPS. See VideoPlayer.frameRate.
