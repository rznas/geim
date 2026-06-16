<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Media.VideoTrackEncoderAttributes-frameRate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The frame rate for the encoded video, in frames per second, expressed as a fraction.

To indicate that the track uses a variable frame rate (VFR), specify a frame rate of 0, or an invalid frame rate. In VFR mode, there is no pre-defined frame duration, which means that frames that you add using MediaEncoder.AddFrame must use the overload that receives a MediaTime.
