<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WWW.LoadImageIntoTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tex | An existing texture object to be overwritten with the image data. |

### Description

Replaces the contents of an existing Texture2D with an image from the downloaded data.

The data must be an image in JPG or PNG format. If the data is not a valid image, the generated texture will be a small image of a question mark. It is recommended to use power-of-two size for each dimension of the image; arbitrary sizes will also work but can load slightly slower and take up a bit more memory.

For PNG files, gamma correction is applied to the texture if PNG file contains gamma information. Display gamma for correction is assumed to be 2.0. If file does not contain gamma information, no color correction will be performed.

This function replaces texture contents with downloaded image data, so texture size and format might change. JPG files are loaded into TextureFormat.RGB24 format, PNG files are loaded into TextureFormat.ARGB32 format. If texture format before calling LoadImage is TextureFormat.DXT1 or TextureFormat.DXT5, then the loaded image will be DXT-compressed (into DXT1 for JPG images and DXT5 for PNG images).

If the data has not finished downloading the texture will be left untouched. Use isDone or `yield` to see if the data is available.

```csharp
// Add this script to a GameObject. The Start() function fetches an
// image from the documentation site.  It is then applied as the
// texture on the GameObject.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public string url = "https://docs.unity3d.com/uploads/Main/ShadowIntro.png";    IEnumerator Start()
    {
        Texture2D tex;
        tex = new Texture2D(4, 4, TextureFormat.DXT1, false);
        using (WWW www = new WWW(url))
        {
            yield return www;
            www.LoadImageIntoTexture(tex);
            GetComponent<Renderer>().material.mainTexture = tex;
        }
    }
}
```
