<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ImageConversion.EncodeArrayToJPG.html
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
| quality | JPG quality to encode with. The range is 1 through 100. 1 is the lowest quality. The default is 75. |

### Description

Encodes this array into JPG format.

This function returns a byte array which is the JPG file data. You can store the encoded data as a file or send it over the network without further processing.

 This function does not work on any compressed format. The encoded JPG data will be either 8bit grayscale, RGB or RGBA (depending on the passed in format).

 This method is thread safe.

```csharp
// Saves screenshot as JPG file.
using System.Collections;
using System.IO;
using UnityEngine;public class JPGScreenSaver : MonoBehaviour
{
    // Take a shot immediately
    IEnumerator Start()
    {
        yield return SaveScreenJPG();
    }    IEnumerator SaveScreenJPG()
    {
        // Read the screen buffer after rendering is complete
        yield return new WaitForEndOfFrame();        // Create a texture in RGB24 format the size of the screen
        int width = Screen.width;
        int height = Screen.height;
        Texture2D tex = new Texture2D(width, height, TextureFormat.RGB24, false);        // Read the screen contents into the texture
        tex.ReadPixels(new Rect(0, 0, width, height), 0, 0);
        tex.Apply();        // Encode the bytes in JPG format
        byte[] bytes = ImageConversion.EncodeArrayToJPG(tex.GetRawTextureData(), tex.graphicsFormat, (uint)width, (uint)height);
        Object.Destroy(tex);        // Write the returned byte array to a file in the project folder
        File.WriteAllBytes(Application.dataPath + "/../SavedScreen.jpg", bytes);
    }
}
```

Additional resources: EncodeToJPG, EncodeNativeArrayToJPG, EncodeArrayToPNG, EncodeArrayToTGA, EncodeArrayToEXR.
