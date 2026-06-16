<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ImageConversion.EncodeToTGA.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tex | The texture to encode. |

### Description

Encodes the specified texture in TGA format.

This function returns a byte array which is the TGA file data. You can store the encoded data as a file or send it over the network without further processing.

 This function does not work on any compressed format. Texture.isReadable must be `true`. The encoded TGA data will be uncompressed 8bit grayscale, RGB or RGBA (depending on the passed in format). For single-channel red textures ( `R8`, `R16`, `RFloat` and `RHalf` ), the encoded TGA data will be in 8-bit grayscale.

```csharp
// Saves screenshot as TGA file.
using UnityEngine;
using System.Collections;
using System.IO;public class TGAScreenSaver : MonoBehaviour
{
    // Take a shot immediately
    IEnumerator Start()
    {
        yield return SaveScreenTGA();
    }    IEnumerator SaveScreenTGA()
    {
        // Read the screen buffer after rendering is complete
        yield return new WaitForEndOfFrame();        // Create a texture in RGB24 format the size of the screen
        int width = Screen.width;
        int height = Screen.height;
        Texture2D tex = new Texture2D(width, height, TextureFormat.RGB24, false);        // Read the screen contents into the texture
        tex.ReadPixels(new Rect(0, 0, width, height), 0, 0);
        tex.Apply();        // Encode the texture in TGA format
        byte[] bytes = ImageConversion.EncodeToTGA(tex);
        Object.Destroy(tex);        // Write the returned byte array to a file in the project folder
        File.WriteAllBytes(Application.dataPath + "/../SavedScreen.tga", bytes);
    }
}
```

Additional resources: Texture2D.ReadPixels, WaitForEndOfFrame, LoadImage, EncodeArrayToTGA, EncodeNativeArrayToTGA, EncodeToPNG, EncodeToJPG, EncodeToEXR.
