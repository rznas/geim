<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/U2D.SpriteEditorExtension.GetSpriteID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sprite | The Sprite to query. |

### Returns

**GUID** GUID stored in the Sprite.

### Description

Gets the Sprite's GUID.

During Sprite Asset generation, you can identify which SpriteRect was used to generate the Sprite. This is done by matching the GUID return from this method and SpriteRect.spriteID.
