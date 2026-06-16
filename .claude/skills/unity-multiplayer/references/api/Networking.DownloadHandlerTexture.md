<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandlerTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A DownloadHandler subclass specialized for downloading images for use as Texture objects.

`DownloadHandlerTexture` stores received data in a pre-allocated Unity Texture object. It's optimized for downloading images from web servers, and performs image decompression and decoding on a worker thread.

This download handler stores received data in a buffer and on download completion decodes the data into valid Unity Texture objects. If the texture is destroyed, it can be created again by the same `DownloadHandlerTexture` object.

The handler performs buffering, decompression and texture creation in native code. Additionally, decompression and texture creation are performed on a worker thread instead of the main thread, which can improve frame time when loading large textures.

`DownloadHandlerTexture` only allocates managed memory when finally creating the Texture itself, which eliminates the garbage collection overhead associated with performing the byte-to-texture conversion in script.

For use cases where you wish to download an image via HTTP and use it as a Texture within Unity, usage of this class is strongly recommended.

```csharp
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Networking;
using System.Collections;[RequireComponent(typeof(Image))]
public class ImageDownloader : MonoBehaviour {
    Image _img;    void Start () {
        _img = GetComponent<UnityEngine.UI.Image>();
        Download("https://www.mysite.com/myimage.png");
    }    public void Download(string url) {
        StartCoroutine(LoadFromWeb(url));
    }    IEnumerator LoadFromWeb(string url)
    {
        UnityWebRequest wr = new UnityWebRequest(url);
        DownloadHandlerTexture texDl = new DownloadHandlerTexture(true);
        wr.downloadHandler = texDl;
        yield return wr.SendWebRequest();
        if (wr.result == UnityWebRequest.Result.Success) {
            Texture2D t = texDl.texture;
            Sprite s = Sprite.Create(t, new Rect(0, 0, t.width, t.height),
                Vector2.zero, 1f);
            _img.sprite = s;
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| texture | Returns the downloaded Texture, or null. (Read Only) |

### Constructors

| Constructor | Description |
| --- | --- |
| DownloadHandlerTexture | Default constructor. |

### Static Methods

| Method | Description |
| --- | --- |
| GetContent | Returns the downloaded Texture, or null. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| data | Returns the raw bytes downloaded from the remote server, or null. (Read Only) |
| error | Error message describing a failure that occurred inside the download handler. |
| isDone | Returns true if this DownloadHandler has been informed by its parent UnityWebRequest that all data has been received, and this DownloadHandler has completed any necessary post-download processing. (Read Only) |
| nativeData | Provides direct access to downloaded data. |
| text | Convenience property. Returns the bytes from data interpreted as a UTF8 string. (Read Only) |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Signals that this DownloadHandler is no longer being used, and should clean up any resources it is using. |

### Protected Methods

| Method | Description |
| --- | --- |
| CompleteContent | Callback, invoked when all data has been received from the remote server. |
| GetData | Callback, invoked when the data property is accessed. |
| GetNativeData | Provides allocation-free access to the downloaded data as a NativeArray. |
| GetProgress | Callback, invoked when UnityWebRequest.downloadProgress is accessed. |
| GetText | Callback, invoked when the text property is accessed. |
| ReceiveContentLengthHeader | Callback, invoked with a Content-Length header is received. |
| ReceiveData | Callback, invoked as data is received from the remote server. |
