<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer-frameRate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The frame rate of the clip or URL in frames/second. (Read Only)

For URL sources, this is only set once the source preparation is completed. See VideoPlayer.Prepare. This property is most accurate after the video does a complete playthrough. 

**Note:** On WebGL, the frame rate is always set to 24FPS because the underlying implementation, the javascript API for HTML5 <video>, does not expose frame rate information.
