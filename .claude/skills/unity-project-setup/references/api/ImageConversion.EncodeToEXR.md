<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ImageConversion.EncodeToEXR.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tex | The texture to convert. |
| flags | Flags used to control compression and the output format. The default is Texture2D.EXRFlags.None |

### Description

Encodes this texture into the EXR format.

This function returns a byte array which is the EXR file data. You can store the encoded data as a file or send it over the network without further processing.

 This function does not work on any compressed format. Although it is best to use this function for HDR texture formats (either 16-bit or 32-bit floats), it can be used with other formats (and the data is converted on the fly). The default output format is uncompressed 16-bit float EXR and can be controlled using the passed in flags. For the texture pass in, Texture.isReadable must be `true`. The encoded EXR data will only contain an alpha channel when the passed-in format has one. For single-channel red textures ( `R8`, `R16`, `RFloat` and `RHalf` ), the encoded data will be in grayscale mode.

 Additional resources: EXRFlags, EncodeToJPG, EncodeToPNG.

```csharp
// Saves HDR RenderTexture as an EXR file.
using UnityEngine;
using System.Collections;
using System.IO;public class SaveRenderTextureToEXR : MonoBehaviour
{
    RenderTexture m_InputTexture;    void SaveRenderTexture()
    {
        if (m_InputTexture != null)
        {
            int width = m_InputTexture.width;
            int height = m_InputTexture.height;            Texture2D tex = new Texture2D(width, height, TextureFormat.RGBAFloat, false);            // Read screen contents into the texture
            Graphics.SetRenderTarget(m_InputTexture);
            tex.ReadPixels(new Rect(0, 0, width, height), 0, 0);
            tex.Apply();            // Encode texture into the EXR
            byte[] bytes = ImageConversion.EncodeToEXR(tex, Texture2D.EXRFlags.CompressZIP);
            File.WriteAllBytes(Application.dataPath + "/../SavedRenderTexture.exr", bytes);            Object.DestroyImmediate(tex);
        }
    }
}
```

Additional resources: EncodeArrayToEXR, EncodeNativeArrayToEXR, EncodeToPNG, EncodeToJPG, EncodeToTGA.
