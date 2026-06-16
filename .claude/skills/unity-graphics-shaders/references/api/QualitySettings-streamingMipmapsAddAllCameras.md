<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings-streamingMipmapsAddAllCameras.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Process all enabled Cameras for texture streaming (rather than just those with StreamingController components).

Set to True to process all enabled Cameras for texture streaming. This is a quick way to set up an existing project. Set to False to process only those Cameras that have active StreamingController components. This allows more fine grain control.

StreamingController components are always considered in the streaming system. These are considered active locations in the following cases:
 - Camera and StreamingController are enabled.
 - Camera is disabled but StreamingController is in a preloading state.
 Additional resources: StreamingController.
