<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandlerTexture-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Default constructor.

Convenience constructor. Assumes the value of `readable` is `false`. The Texture returned by `texture` will not have its texture data accessible from script.

```csharp
using System.Collections;
using UnityEngine;
using UnityEngine.Networking;public class Example : MonoBehaviour
{
    IEnumerator Start()
    {
        using (var uwr = new UnityWebRequest("https://website.com/image.jpg", UnityWebRequest.kHttpVerbGET))
        {
            uwr.downloadHandler = new DownloadHandlerTexture();
            yield return uwr.SendWebRequest();
            GetComponent<Renderer>().material.mainTexture = DownloadHandlerTexture.GetContent(uwr);
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| readable | Value to set for TextureImporter.isReadable. |

### Description

Constructor, allows TextureImporter.isReadable property to be set.

The value in `readable` will be used to set the TextureImporter.isReadable property when importing the downloaded texture data.

### Parameters

| Parameter | Description |
| --- | --- |
| parameters | Parameters specifying various properties of texture that will be created. |

### Description

Constructor that allows you to specify the full set of supported properties when creating a texture from a downloaded image.

The value of `parameters` allows control of more properties of the texture. Refer to Texture2D for more information about texture properties.
