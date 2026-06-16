<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ReflectionProbe.RenderProbe.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetTexture | Target RenderTexture in which rendering should be done. Specifying null will update the probe's default texture. |

### Returns

**int** An integer representing a RenderID which can subsequently be used to check if the probe has finished rendering while rendering in time-slice mode.

 Additional resources: IsFinishedRendering Additional resources: timeSlicingMode

### Description

Refreshes the probe's cubemap.
