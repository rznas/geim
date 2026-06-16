<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Lightmapping.BakeDelegate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| progress | The progress of the additional baking stage (0.0-1.0). This progress will be displayed in the progress bar. |
| done | Wether the additional bake is done. Set this to true to unlock the baking pipeline. |
| bakeInput | The BakeInput extracted from the set of open scenes with InputExtraction.ExtractFromScene. |

### Description

Delegate called at the last stage of the baking pipeline.
