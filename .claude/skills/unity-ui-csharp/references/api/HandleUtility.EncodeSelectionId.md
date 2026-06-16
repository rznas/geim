<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.EncodeSelectionId.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| pickingIndex | The picking index to encode. For example, a picking index passed from RenderPickingArgs.pickingIndex). |

### Returns

**Vector4** The Vector4 `selectionId` value used for rendering.

### Description

Translates a single integer picking index into a Vector4 `selectionId` value. The Vector4 selectionId is used to render the picking render textures during picking rendering.

Additional resources: HandleUtility.DecodeSelectionId, HandleUtility.RegisterRenderPickingCallback.
