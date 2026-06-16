<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VideoClipImporter-transcodeSkipped.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true if transcoding was skipped during import, false otherwise. (Read Only)

When VideoImporterTargetSettings.enableTranscoding is set to true, the resulting transcoding operation done at import time may be quite long, up to many hours depending on source resolution and content duration. An option to skip this process is offered in the asset import progress bar. When skipped, the transcoding instead provides a non-transcoded verision of the asset. However, the importer settings stay intact so this property can be inspected to detect the incoherence with the generated artifact.

Re-importing without stopping the transcode process, or with transcode turned off, causes this property to become false.
