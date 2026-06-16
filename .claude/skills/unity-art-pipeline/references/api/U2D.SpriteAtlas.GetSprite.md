<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/U2D.SpriteAtlas.GetSprite.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the Sprite. |

### Description

Clone the first Sprite in this atlas that matches the name packed in this atlas and return it.

The clone will use the packed texture of this atlas. Using the action of SpriteAtlasManager.RequestAtlasCallback will not affect this clone.
