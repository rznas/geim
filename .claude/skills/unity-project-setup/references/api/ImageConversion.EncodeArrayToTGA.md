<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ImageConversion.EncodeArrayToTGA.html
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

Encodes this array into TGA format.

This function returns a byte array which is the TGA file data. You can store the encoded data as a file or send it over the network without further processing.

 This function does not work on any compressed format. The encoded TGA data will be uncompressed 8bit grayscale, RGB or RGBA (depending on the passed in format). For single-channel red textures ( `R8`, `R16`, `RFloat` and `RHalf` ), the encoded TGA data will be in 8-bit grayscale.

 This method is thread safe.

```csharp
// Saves screenshot as TGA file.
using System.Collections;
using System.IO;
using UnityEngine;public class TGAScreenSaver : MonoBehaviour
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
        tex.Apply();        // Encode the bytes in TGA format
        byte[] bytes = ImageConversion.EncodeArrayToTGA(tex.GetRawTextureData(), tex.graphicsFormat, (uint)width, (uint)height);
        Object.Destroy(tex);        // Write the returned byte array to a file in the project folder
        File.WriteAllBytes(Application.dataPath + "/../SavedScreen.tga", bytes);
    }
}
```

Additional resources: EncodeToTGA, EncodeNativeArrayToTGA, EncodeArrayToPNG, EncodeArrayToJPG, EncodeArrayToEXR.
