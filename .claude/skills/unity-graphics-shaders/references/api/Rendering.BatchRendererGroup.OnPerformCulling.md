<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchRendererGroup.OnPerformCulling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rendererGroup | The BatchRendererGroup to cull. |
| cullingContext | Provides read-only information about the culling request (like visibility culling planes) that the callback can use to determine visible instances. |
| cullingOutput | The target that the callback should write resulting draw commands. |
| userContext | An optional pointer to custom data that you can associate with the BatchRendererGroup. |

### Description

Culling callback function.

For more information, see BatchRendererGroup.
