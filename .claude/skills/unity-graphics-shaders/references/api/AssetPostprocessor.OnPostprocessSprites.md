<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPostprocessor.OnPostprocessSprites.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Add this function to a subclass to get a notification when an texture of sprite(s) has completed importing.

For Multiple sprite-mode assets each sprite will be passed in the second argument as an array of sprites.

```csharp
using UnityEngine;
using UnityEditor;public class Example : AssetPostprocessor
{
    // Increment the version number, when the AssetPostprocessors code/behavior is changed
    static readonly uint k_Version = 0;
    public override uint GetVersion() { return k_Version; }    void OnPostprocessSprites(Texture2D texture, Sprite[] sprites)
    {
        Debug.Log("Sprites: " + sprites.Length);
    }    void OnPostprocessTexture(Texture2D texture)
    {
        Debug.Log("Texture2D: (" + texture.width + "x" + texture.height + ")");
    }
}
```
