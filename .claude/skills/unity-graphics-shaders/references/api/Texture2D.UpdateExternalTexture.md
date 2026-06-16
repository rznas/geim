<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D.UpdateExternalTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nativeTex | Native 2D texture object. |

### Description

Updates Unity texture to use different native texture object.

This function is mostly useful for native code plugins that create platform specific texture objects outside of Unity, and need to use these textures in Unity Scenes. For a texture created with CreateExternalTexture, this function switches to another underlying texture object if/when it changes.

Additional resources: CreateExternalTexture.
