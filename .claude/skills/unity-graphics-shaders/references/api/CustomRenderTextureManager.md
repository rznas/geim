<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CustomRenderTextureManager.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Custom Render Texture Manager.

It will allow you to retrieve a lot of information about running Custom Render Textures.

### Static Methods

| Method | Description |
| --- | --- |
| GetAllCustomRenderTextures | Populate the list in parameter with all currently loaded custom render textures. |

### Events

| Event | Description |
| --- | --- |
| initializeTriggered | Unity raises this event when CustomRenderTexture.Initialize is called. |
| textureLoaded | Unity raises this event when it loads a CustomRenderTexture. |
| textureUnloaded | Unity raises this event when it unloads a CustomRenderTexture. |
| updateTriggered | Unity raises this event when CustomRenderTexture.Update is called. |
