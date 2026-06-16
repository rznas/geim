<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPostprocessor.OnPostprocessTexture2DArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Add this function to a subclass to get a notification when a texture2DArray has completed importing just before Unity compresses it.

You can't choose a compression format at this point. If you want to change compression format based on filename or other attributes of the texture, use AssetPostprocessor.OnPreprocessTexture.

 However, if you modify the TextureImporter settings in this way, it has no effect on the texture that Unity is currently importing, but it does apply the next time Unity imports this texture. This causes unpredictable results.

```csharp
using UnityEditor;
using UnityEngine;
using System.Collections;// Postprocesses all 2D texture arrays that are placed in a folder
// "invert color" to have their colors inverted.
public class InvertColor : AssetPostprocessor
{
    // Increment the version number, when the AssetPostprocessors code/behavior is changed
    static readonly uint k_Version = 0;
    public override uint GetVersion() { return k_Version; }    void OnPostprocessTexture2DArray(Texture2DArray texture)
    {
        // Only post process textures if they are in a folder
        // "invert color" or a sub folder of it.
        string lowerCaseAssetPath = assetPath.ToLower();
        if (lowerCaseAssetPath.IndexOf("/invert color/") == -1)
            return;        for (int slice = 0; slice < texture.depth; ++slice)
        {
            for (int m = 0; m < texture.mipmapCount; m++)
            {
                Color[] c = texture.GetPixels(m);                for (int i = 0; i < c.Length; i++)
                {
                    c[i].r = 1 - c[i].r;
                    c[i].g = 1 - c[i].g;
                    c[i].b = 1 - c[i].b;
                }
                texture.SetPixels(c, slice, m);
            }
        }        // Instead of setting pixels for each mipmap level, you can modify
        // the pixels in the highest mipmap then use texture.Apply(true);
        // to generate lower mip levels.
    }
}
```
