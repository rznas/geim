<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer-frameCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Number of frames in the current video content. (Read Only)

This value may be adjusted as the frameCount changes during playback. The value is most accurate after the video completes a full playthrough. 

For URL sources, this will only be set once the source preparation is completed. See VideoPlayer.Prepare.

**Note:** On WebGL, because the frame rate is not known, the frame count assumes a rate of 24FPS. See VideoPlayer.frameRate.
