<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VideoImporterTargetSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Importer settings that can have platform-specific values.

### Properties

| Property | Description |
| --- | --- |
| aspectRatio | How the aspect ratio discrepancies, if any, will be handled if the chosen import resolution has a different ratio than the source. |
| bitrateMode | Bit rate type for the transcoded clip. |
| codec | Codec that the resulting VideoClip will use. |
| customHeight | Height of the transcoded clip when the resizeMode is set to custom. |
| customWidth | Width of the transcoded clip when the resizeMode is set to custom. |
| enableTranscoding | Controls whether the movie file will be transcoded during import. When transcoding is not enabled, the file will be imported in its original format. |
| resizeMode | How to resize the images when going into the imported clip. |
| spatialQuality | Controls an internal image resize, resulting in blurrier images but smaller image dimensions and file size. |

### Constructors

| Constructor | Description |
| --- | --- |
| VideoImporterTargetSettings | Constructs an object with all members initialized with the default value inherent to their type. |
