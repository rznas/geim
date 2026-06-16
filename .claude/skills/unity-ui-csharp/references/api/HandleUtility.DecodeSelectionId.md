<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.DecodeSelectionId.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| selectionId | The selection ID retrieved from GPU to translate into a picking index. |

### Returns

**int** The decoded picking index.

### Description

Translates a Vector4 `selectionId` value retrieved from GPU into a single integer picking index.

Additional resources: HandleUtility.EncodeSelectionId.
