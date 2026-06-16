<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ImageConversion.EncodeArrayToPNG.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| array | The byte array to convert. |
| format | The pixel format of the image data. |
| width | The width of the image data in pixels. |
| height | The height of the image data in pixels. |
| rowBytes | The length of a single row in bytes. The default is 0, which means Unity calculates the length automatically. |

### Description

Encodes this array into PNG format.

This function returns a byte array which is the PNG file data. You can store the encoded data as a file or send it over the network without further processing.

 This function does not work on any compressed format. The encoded PNG data will be either 8bit grayscale, RGB or RGBA (depending on the passed in format). For single-channel red textures ( `R8`, `R16`, `RFloat` and `RHalf` ), the encoded PNG data will be in grayscale. PNG data will not contain gamma correction or color profile information.

 This method is thread safe.

```csharp
// Saves screenshot as PNG file.
using System.Collections;
using System.IO;
using UnityEngine;public class PNGScreenSaver : MonoBehaviour
{
    // Take a shot immediately
    IEnumerator Start()
    {
        yield return SaveScreenPNG();
    }    IEnumerator SaveScreenPNG()
    {
        // Read the screen buffer after rendering is complete
        yield return new WaitForEndOfFrame();        // Create a texture in RGB24 format the size of the screen
        int width = Screen.width;
        int height = Screen.height;
        Texture2D tex = new Texture2D(width, height, TextureFormat.RGB24, false);        // Read the screen contents into the texture
        tex.ReadPixels(new Rect(0, 0, width, height), 0, 0);
        tex.Apply();        // Encode the bytes in PNG format
        byte[] bytes = ImageConversion.EncodeArrayToPNG(tex.GetRawTextureData(), tex.graphicsFormat, (uint)width, (uint)height);
        Object.Destroy(tex);        // Write the returned byte array to a file in the project folder
        File.WriteAllBytes(Application.dataPath + "/../SavedScreen.png", bytes);
    }
}
```

Additional resources: EncodeToPNG, EncodeNativeArrayToPNG, EncodeArrayToJPG, EncodeArrayToTGA, EncodeArrayToEXR.
