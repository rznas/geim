<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderPickingResult-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| renderedPickingIndexCount | The number of picking indices used. |
| resolver | The callback to invoke for resolving a picking index to a GameObject reference. This callback can be provided either as a ResolvePickingCallback or a ResolvePickingWithWorldPositionCallback based on whether you need the information of the world space position or the depth value for where the picking occurred. |

### Description

Constructs a `RenderPickingResult` value.

Additional resources: RenderPickingResult.
