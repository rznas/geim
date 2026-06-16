<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Media.VideoTrackAttributes-frameRate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Frames per second.

Expressed as a fraction so that rates such as 29.97 (precisely 30000/1001) are represented accurately.

**Note**

Specifying a 0 or invalid rate (see MediaRational.isValid) indicates the video track uses Variable Frame Rate (VFR). In this mode of operation, because there is no pre-defined frame duration, all frames added through MediaEncoder.AddFrame must use the overload that receives a MediaTime.
