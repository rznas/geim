<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture-totalTextureMemory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The total texture memory, in bytes, that Unity would use if all textures are loaded at full resolution.

This is a theoretical value that does not take into account any input from the streaming system or manual adjustments, such as setting the Texture2D.requestedMipmapLevel directly. To see a texture memory value that takes these inputs into account, use Texture.desiredTextureMemory.

The value only considers instances of Texture2D and CubeMap textures. It does not include any other texture types. Furthermore, it does not track any 2D and CubeMap textures created internally by the Unity Editor.
