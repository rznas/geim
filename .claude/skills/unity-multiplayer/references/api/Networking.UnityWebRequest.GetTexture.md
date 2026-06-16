<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest.GetTexture.html
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

Creates a UnityWebRequest intended to download an image via HTTP GET and create a Texture based on the retrieved data.

**Obsolete** - instead use UnityWebRequestTexture.GetTexture.

This method creates a UnityWebRequest and sets the target URL to the string `uri` argument. This method sets no other flags or custom headers.

This method attaches a DownloadHandlerTexture object to the UnityWebRequest. DownloadHandlerTexture is a specialized DownloadHandler which is optimized for storing images which are to be used as textures in the Unity Engine. Using this class significantly reduces memory reallocation compared to downloading raw bytes and creating a texture manually in script. In addition, texture conversion will be performed on a worker thread.

This method attaches no UploadHandler to the UnityWebRequest.

UnityWebRequest.GetTexture is obsolete. Use UnityWebRequestTexture.GetTexture instead.
