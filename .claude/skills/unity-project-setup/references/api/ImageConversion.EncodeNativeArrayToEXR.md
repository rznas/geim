<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ImageConversion.EncodeNativeArrayToEXR.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| input | The native array to convert. |
| format | The pixel format of the image data. |
| width | The width of the image data in pixels. |
| height | The height of the image data in pixels. |
| rowBytes | The length of a single row in bytes. The default is 0, which means Unity calculates the length automatically. |
| flags | Flags used to control compression and the output format. The default is Texture2D.EXRFlags.None |

### Description

Encodes this native array into the EXR format.

This function returns a NativeArray<byte> which is the EXR data. You can store the encoded data as a file or send it over the network without further processing.

 This function does not work on any compressed format. Although it is best to use this function for HDR texture formats (either 16-bit or 32-bit floats), it can be used with other formats (and the data is converted on the fly). The default output format is uncompressed 16-bit float EXR and can be controlled using the passed in flags. The encoded EXR data will only contain an alpha channel when the passed-in format has one. For single-channel red textures ( `R8`, `R16`, `RFloat` and `RHalf` ), the encoded data will be in grayscale mode.

 The native array that this function returns is allocated with the persistent allocator, so this function should only be called from the main thread.

```csharp
// Saves screenshot as EXR file.
using System.Collections;
using System.IO;
using Unity.Collections;
using UnityEngine;public class EXRScreenSaver : MonoBehaviour
{
    // Take a shot immediately
    IEnumerator Start()
    {
        yield return SaveScreenEXR();
    }    IEnumerator SaveScreenEXR()
    {
        // Read the screen buffer after rendering is complete
        yield return new WaitForEndOfFrame();        // Create a texture in RGBAFloat format the size of the screen
        int width = Screen.width;
        int height = Screen.height;
        Texture2D tex = new Texture2D(width, height, TextureFormat.RGBAFloat, false);        // Read the screen contents into the texture
        tex.ReadPixels(new Rect(0, 0, width, height), 0, 0);
        tex.Apply();        // Encode the bytes in EXR format
        NativeArray<byte> imageBytes = new NativeArray<byte>(tex.GetRawTextureData(), Allocator.Temp);
        var bytes = ImageConversion.EncodeNativeArrayToEXR(imageBytes, tex.graphicsFormat, (uint)width, (uint)height);
        Object.Destroy(tex);        // Write the returned byte array to a file in the project folder
        File.WriteAllBytes(Application.dataPath + "/../SavedScreen.exr", bytes.ToArray());
    }
}
```

Additional resources: EncodeToEXR, EncodeArrayToEXR, EncodeNativeArrayToPNG, EncodeNativeArrayToJPG, EncodeNativeArrayToTGA.
