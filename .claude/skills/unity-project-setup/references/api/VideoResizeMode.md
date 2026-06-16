<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VideoResizeMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

How the video clip's images will be resized during transcoding.

When choosing a mode that may result in a change in aspect ratio, use the VideoClipImporter.keepRatio property to control the addition of padding.

### Properties

| Property | Description |
| --- | --- |
| OriginalSize | Same width and height as the source. |
| ThreeQuarterRes | 3/4 width and height. |
| HalfRes | Half width and height. |
| QuarterRes | Quarter width and height. |
| Square1024 | Fit source in a 1024x1024 rectangle. |
| Square512 | Fit source in a 512x512 rectangle. |
| Square256 | Fit source in a 256x256 rectangle. |
| CustomSize | Resulting size will be driven by VideoClipImporter.customWidth and VideoClipImporter.customHeight. |
