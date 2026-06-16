<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.ResolvePickingWithWorldPositionCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| localPickingIndex | The 0-based index that specifies what picking index was selected. |
| worldPos | The world space position where the picking occurred. |
| depth | The raw depth value read from the picking render texture. |

### Description

The delegate type to return from RenderPickingCallback through the RenderPickingResult.resolverWithWorldPos member, with the additional world space position and depth information of where the click occurred.

Additional resources: RenderPickingResult.
