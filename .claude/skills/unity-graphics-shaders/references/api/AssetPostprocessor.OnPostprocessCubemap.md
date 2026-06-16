<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPostprocessor.OnPostprocessCubemap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Add this function to a subclass to get a notification just before a cubemap texture has completed importing.

Note that you should avoid modifying the TextureImporter settings in this manner as it would have no effect on the texture that is currently being imported but would apply the next time the texture is imported. This behavior is nondeterministic and therefore undesirable.

```csharp
using UnityEditor;
using UnityEngine;
using System.Collections;// Postprocesses all cubemaps that are placed in a folder
// Here we just halve the texels values
public class ProcessCubemap : AssetPostprocessor
{
    // Increment the version number, when the AssetPostprocessors code/behavior is changed
    static readonly uint k_Version = 0;
    public override uint GetVersion() { return k_Version; }    void OnPostprocessCubemap(Cubemap texture)
    {
        string lowerCaseAssetPath = assetPath.ToLower();
        if (lowerCaseAssetPath.IndexOf("/postprocessedcubemaps/") == -1)
            return;        for (int m = 0; m < texture.mipmapCount; m++)
        {
            for (int face = 0; face < 6; face++)
            {
                CubemapFace f = (CubemapFace)face;
                Color[] c = texture.GetPixels(f, m);                for (int i = 0; i < c.Length; i++)
                {
                    c[i].r = c[i].r * 0.5f;
                    c[i].g = c[i].g * 0.5f;
                    c[i].b = c[i].b * 0.5f;
                }                texture.SetPixels(c, f, m);
            }
            // Instead of setting pixels for each mipmap level, you can also
            // modify only the pixels in the highest mip level. And then simply use
            // texture.Apply(true); to generate lower mip levels.
        }
    }
}
```
