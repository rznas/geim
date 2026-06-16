<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ImageConversion.EncodeToJPG.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tex | Text texture to convert. |
| quality | JPG quality to encode with. The range is 1 through 100. 1 is the lowest quality. The default is 75. |

### Description

Encodes this texture into JPG format.

This function returns a byte array which is the JPG file data. You can store the encoded data as a file or send it over the network without further processing.

This function does not work on any compressed format. Texture.isReadable must be `true`. The encoded JPG data will be either 8bit grayscale, RGB or RGBA (depending on the passed in format).

```csharp
// Saves screenshot as JPG file.
using UnityEngine;
using System.Collections;
using System.IO;public class JPGScreenSaver : MonoBehaviour
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
        tex.Apply();        // Encode the texture in JPG format
        byte[] bytes = ImageConversion.EncodeToJPG(tex);
        Object.Destroy(tex);        // Write the returned byte array to a file in the project folder
        File.WriteAllBytes(Application.dataPath + "/../SavedScreen.jpg", bytes);
    }
}
```

Additional resources: EncodeArrayToJPG, EncodeNativeArrayToJPG, EncodeToPNG, EncodeToTGA, EncodeToEXR.
