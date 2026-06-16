<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequestTexture.GetTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| uri | The URI of the image to download. |
| nonReadable | If true, the texture's raw data will not be accessible to script. This can conserve memory. Default: `false`. |

### Returns

**UnityWebRequest** A UnityWebRequest properly configured to download an image and convert it to a Texture.

### Description

Create a UnityWebRequest intended to download an image via HTTP GET and create a Texture based on the retrieved data.

Use `UnityWebRequestTexture.GetTexture` to retrieve a Texture file from a remote server. This function is very similar to `UnityWebRequest.Get`, but is optimized for downloading and storing textures efficiently. It creates a UnityWebRequest and sets the target URL to the one specified as a string or uri object in the `uri` argument. No other flags or custom headers are set.

This method attaches a DownloadHandlerTexture object to the UnityWebRequest. DownloadHandlerTexture is a specialized DownloadHandler optimized for storing images that are to be used as textures in the Unity Engine. Using this class significantly reduces memory reallocation compared to downloading raw bytes and creating a texture manually in script. In addition, texture conversion is performed on a worker thread.

This method attaches no UploadHandler to the UnityWebRequest.

The texture is created as if it stores color data. Only JPG and PNG formats are supported.

Additional resources: TextureImporter.sRGBTexture.

```csharp
using UnityEngine;
using UnityEngine.Networking;
using System.Collections;public class MyBehaviour : MonoBehaviour
{
    void Start()
    {
        StartCoroutine(GetText());
    }    IEnumerator GetText()
    {
        using (UnityWebRequest uwr = UnityWebRequestTexture.GetTexture("https://www.my-server.com/myimage.png"))
        {
            yield return uwr.SendWebRequest();            if (uwr.result != UnityWebRequest.Result.Success)
            {
                Debug.Log(uwr.error);
            }
            else
            {
                // Get downloaded asset bundle
                var texture = DownloadHandlerTexture.GetContent(uwr);
            }
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| uri | The URI of the image to download. |
| parameters | Parameters specifying various properties of texture that will be created. |

### Returns

**void** A UnityWebRequest properly configured to download an image and convert it to a Texture.

### Description

Create a UnityWebRequest intended to download an image via HTTP GET and create a Texture based on the retrieved data.

Same as an overload with only `uri` parameter, except that it allows more control over the properties of texture that will be created. For example, using this overload you can disable creation of mipmaps or use linear color space.

```csharp
using System.Collections;
using UnityEngine;
using UnityEngine.Networking;public class NewMonoBehaviourScript : MonoBehaviour
{
   void Start()
   {
       StartCoroutine(GetText());
   }    IEnumerator GetText()
    {
        // Use linear color space and reduce memory usage by disabling mipmaps and ability to read pixels
        var parameters = DownloadedTextureParams.Default;
        parameters.readable = false;
        parameters.mipmapChain = false;
        parameters.linearColorSpace = true;
        using (UnityWebRequest uwr = UnityWebRequestTexture.GetTexture("https://www.my-server.com/myimage.png", parameters))
        {
            yield return uwr.SendWebRequest();            if (uwr.result != UnityWebRequest.Result.Success)
            {
                Debug.Log(uwr.error);
            }
            else
            {
                // Get downloaded asset bundle
                var texture = DownloadHandlerTexture.GetContent(uwr);
            }
        }
    } 
}
```
