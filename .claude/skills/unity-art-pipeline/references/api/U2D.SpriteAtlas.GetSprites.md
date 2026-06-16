<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/U2D.SpriteAtlas.GetSprites.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sprites | Array of Sprite that will be filled. |

### Returns

**int** The size of the returned array.

### Description

Clone all the Sprite in this atlas and fill them into the supplied array.

The array will not be resized if it doesn't contain enough elements to be filled. Please use SpriteAtlas.spriteCount to determine the size for the array.

Due to the nature of the packing algorithm, Sprites in this list are sorted by their area size, in descending order.

### Parameters

| Parameter | Description |
| --- | --- |
| sprites | Array of Sprite that will be filled. |
| name | The name of the Sprite. |

### Description

Clone all the Sprite matching the name in this atlas and fill them into the supplied array.
