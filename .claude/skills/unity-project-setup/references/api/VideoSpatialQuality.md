<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VideoSpatialQuality.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls the imported clip's internal resize to save space at the cost of blurrier images.

The resulting clip will still store its original size but the encoded images will use smaller images. This provides an alternative way of reducing the bitrate without introducing codec artifacts.

### Properties

| Property | Description |
| --- | --- |
| LowSpatialQuality | Scales width and height by 1/2. |
| MediumSpatialQuality | Scales width and height by 3/4. |
| HighSpatialQuality | No resize performed. |
