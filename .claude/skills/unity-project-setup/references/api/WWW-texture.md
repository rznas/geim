<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WWW-texture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a Texture2D generated from the downloaded data (Read Only).

The data must be an image in JPG or PNG format. If the data is not a valid image, the generated texture will be a small image of a question mark. It is recommended to use power-of-two size for each dimension of the image; arbitrary sizes will also work but can load slightly slower and take up a bit more memory. Each invocation of texture property allocates a new Texture2D. If you continously download textures you must use WWW.LoadImageIntoTexture or Object.Destroy the previously created texture.

For PNG files, gamma correction is applied to the texture if PNG file contains gamma information. Display gamma for correction is assumed to be 2.0. If file does not contain gamma information, no color correction will be performed.

JPG files are loaded into TextureFormat.RGB24 format, PNG files are loaded into TextureFormat.ARGB32 format. If you want to DXT-compress the downloaded image, use WWW.LoadImageIntoTexture instead.

If the object has not finished downloading the data a dummy image will be returned. Use isDone or yield to see if the data is available.

```csharp
using UnityEngine;
using System.Collections;// Get the latest webcam shot from outside "Friday's" in Times Square
public class ExampleClass : MonoBehaviour
{
    public string url = "https://images.earthcam.com/ec_metros/ourcams/fridays.jpg";    IEnumerator Start()
    {
        // Start a download of the given URL
        using (WWW www = new WWW(url))
        {
            // Wait for download to complete
            yield return www;            // assign texture
            Renderer renderer = GetComponent<Renderer>();
            renderer.material.mainTexture = www.texture;
        }
    }
}
```

**Note:** The WWW.texture property allocates a new Texture2D every time it is called. Therefore, it is important to always assign the result to a local variable so that it can later be freed using Destroy().

The call to www.texture allocates a new texture, but the texture is never deallocated because no local reference to it exists.

Alternatively, use WWW.LoadImageIntoTexture.
