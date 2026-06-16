<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderPickingResult-renderedPickingIndexCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The number of consecutive picking indices used during the current RenderPickingCallback.

If you return a RenderPickingResult struct with 0 count, the rendering is considered a RenderPickingResult.NoOperation and the resolve callback is not called, even if you did render something.
