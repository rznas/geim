<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/U2D.SpriteAtlasManager.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Manages SpriteAtlas during runtime.

A Sprite can be loaded without referencing any Sprite Atlas, thus having no texture. It will be invisible until the user registers an atlas to the Sprite by listening to the SpriteAtlasManager.atlasRequested callback. When triggered, it will pass in the atlas tag and a System.Action which will take in an atlas object.

### Static Methods

| Method | Description |
| --- | --- |
| CreateSpriteAtlas | Creates a new sprite atlas with the given name and runtime configuration and binds sprites to textures. |

### Events

| Event | Description |
| --- | --- |
| atlasRegistered | Trigger when a SpriteAtlas is registered via invoking the callback in SpriteAtlasManager.atlasRequested. |
| atlasRequested | Trigger when any Sprite was bound to SpriteAtlas but couldn't locate the atlas asset during runtime. |
