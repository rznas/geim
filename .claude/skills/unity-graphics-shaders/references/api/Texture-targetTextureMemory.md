<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture-targetTextureMemory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Total texture memory usage in bytes after applying the memory budget and loading all textures.

Indicates the memory allocated to textures in the scene after loading all textures and applying the Texture memory budget, considering mipmap streaming settings. As Unity loads or unloads texture mipmaps, the Texture.currentTextureMemory value approaches the `targetTextureMemory`.

The value only considers instances of Texture2D and CubeMap textures. It does not include any other texture types. Furthermore, it does not track any 2D and CubeMap textures created internally by the Unity Editor.
