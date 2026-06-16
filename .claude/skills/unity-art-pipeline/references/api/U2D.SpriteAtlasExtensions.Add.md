<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/U2D.SpriteAtlasExtensions.Add.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| objects | Array of Object to be packed into the atlas. |

### Description

Add an array of Assets to the packable objects list.

At this moment, only Sprite, Texture2D and the Folder are allowed to be packable objects.

 - "Sprite" will be packed directly.
 - Each "sprite" in the "Texture2D" will be packed.
 - Folder will be traversed. Each "Texture2D" child will be packed. Sub folder will be traversed.
