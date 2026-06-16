<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WWW-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| url | The url to download. Must be '%' escaped. |

### Returns

**void** A new WWW object. When it has been downloaded, the results can be fetched from the returned object.

### Description

Creates a WWW request with the given URL.

This function creates and sends a GET request. The stream will automatically start downloading the response.

After the stream is created you have to wait for it to complete, then you can access the downloaded data. As a convenience the stream can be yielded, so you can very easily tell Unity to wait for the download to complete.

***Note:*** URL must be '%' escaped.

```csharp
// Get the latest webcam shot from outside "Friday's" in Times Squareusing UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public string url = "https://images.earthcam.com/ec_metros/ourcams/fridays.jpg";
    IEnumerator Start()
    {
        // Start a download of the given URL
        using (WWW www = new WWW(url))
        {
            // Wait for download to complete
            yield return www;            // assign texture
            Renderer renderer = GetComponent<Renderer>();
            renderer.material.mainTexture = www.textureNonReadable;
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| url | The url to download. Must be '%' escaped. |
| form | A WWWForm instance containing the form data to post. |

### Returns

**void** A new WWW object. When it has been downloaded, the results can be fetched from the returned object.

### Description

Creates a WWW request with the given URL.

This function creates and sends a POST request with form data contained in a WWWForm parameter. This is the same as calling `new WWW(url,form.data, form.headers)`. The stream will automatically start downloading the response.

After the stream is created you have to wait for it to complete, then you can access the downloaded data. As a convenience the stream can be yielded, so you can very easily tell Unity to wait for the download to complete.

***Note:*** URL must be '%' escaped.

### Parameters

| Parameter | Description |
| --- | --- |
| url | The url to download. Must be '%' escaped. |
| postData | A byte array of data to be posted to the url. |

### Returns

**void** A new WWW object. When it has been downloaded, the results can be fetched from the returned object.

### Description

Creates a WWW request with the given URL.

This function creates and sends a POST request with raw post data contained in postData. The stream will automatically start downloading the response. Use this version if you need to post raw post data in a custom format to the server.

After the stream is created you have to wait for it to complete, then you can access the downloaded data. As a convenience the stream can be yielded, so you can very easily tell Unity to wait for the download to complete.

***Note:*** URL must be '%' escaped.

### Parameters

| Parameter | Description |
| --- | --- |
| url | The url to download. Must be '%' escaped. |
| postData | A byte array of data to be posted to the url. |
| headers | A hash table of custom headers to send with the request. |

### Returns

**void** A new WWW object. When it has been downloaded, the results can be fetched from the returned object.

### Description

Creates a WWW request with the given URL.

This function creates and sends a POST request with raw post data contained in postData and custom request headers supplied in the `headers` hashtable. The stream will automatically start downloading the response. Use this version if you need to post raw post data in a custom format to the server or if you need to supply custom request headers.

After the stream is created you have to wait for it to complete, then you can access the downloaded data. As a convenience the stream can be yielded, so you can very easily tell Unity to wait for the download to complete.

***Note:*** URL must be '%' escaped.

### Parameters

| Parameter | Description |
| --- | --- |
| url | The url to download. Must be '%' escaped. |
| postData | A byte array of data to be posted to the url. |
| headers | A dictionary that contains the header keys and values to pass to the server. |

### Returns

**void** A new WWW object. When it has been downloaded, the results can be fetched from the returned object.

### Description

Creates a WWW request with the given URL.

This function creates and sends a POST request with raw post data contained in postData and custom request headers supplied in the `headers` Dictionary. The stream will automatically start downloading the response. Use this version if you need to post raw post data in a custom format to the server or if you need to supply custom request headers.

After the stream is created you have to wait for it to complete, then you can access the downloaded data. As a convenience the stream can be yielded, so you can very easily tell Unity to wait for the download to complete.

***Note:*** URL must be '%' escaped.
