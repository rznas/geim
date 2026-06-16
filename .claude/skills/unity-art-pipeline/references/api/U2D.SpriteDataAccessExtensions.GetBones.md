<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/U2D.SpriteDataAccessExtensions.GetBones.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sprite | The sprite to get the list of SpriteBone from. |

### Returns

**SpriteBone[]** An array of SpriteBone that belongs to this Sprite.

### Description

Returns a list of SpriteBone in this Sprite.

SpriteBone is a richer set of information about the bind pose that this Sprite contains. It is useful for reconstructing the runtime skeleton for this Sprite and perform various other operations like resolving the bone path. It is via information in SpriteBone that the system knows if a sprite could be bound to a specific hierarchy.
