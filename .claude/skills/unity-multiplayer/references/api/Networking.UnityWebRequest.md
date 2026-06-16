<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides methods to communicate with web servers.

`UnityWebRequest` handles the flow of HTTP communication with web servers. To post-process downloaded data and pre-process uploaded data, use DownloadHandler and UploadHandler respectively.

`UnityWebRequest` includes static utility functions that return `UnityWebRequest` instances configured for common use cases. For example:

- UnityWebRequest.Get
- UnityWebRequest.Post
- UnityWebRequest.Put

To send a web request from a `UnityWebRequest` instance, call UnityWebRequest.SendWebRequest. After the `UnityWebRequest` begins to communicate with a remote server, you can't change any of the properties in that `UnityWebRequest` instance. HTTPS is supported and the server certificate is validated against the root certificate store available on the system the app runs on. Validation can be disabled (for example, for development server using self-signed certificate) or changed to custom handling by assigning the UnityWebRequest.certificateHandler property.

Depending on the platform your application runs on, `UnityWebRequest` either sets the [User-Agent header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/User-Agent) itself or leaves it for the operating system to set. `UnityWebRequest` sets the `User-Agent` header for all platforms except iOS, Xbox platforms, and WebGL.

**Note**: If the device that the application runs on uses proxy settings, `UnityWebRequest` applies the proxy settings after the application sends the request. **Note**: `UnityWebRequest` does not support WPAD PAC configuration with multiple proxy failover chain for the platforms it is supported. In case such configuration is used, `UnityWebRequest` will use the first proxy in the chain, and will not use other failover proxy in the chain in case of a request failure.

```csharp
using UnityEngine;
using System.Collections;
using UnityEngine.Networking;
 
public class MyBehaviour : MonoBehaviour {
    void Start() {
        StartCoroutine(GetText());
    }
 
    IEnumerator GetText() {
        UnityWebRequest www = UnityWebRequest.Get("https://www.my-server.com");
        yield return www.SendWebRequest();
 
        if (www.result != UnityWebRequest.Result.Success) {
            Debug.Log(www.error);
        }
        else {
            // Show results as text
            Debug.Log(www.downloadHandler.text);
 
            // Or retrieve results as binary data
            byte[] results = www.downloadHandler.data;
        }
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| kHttpVerbCREATE | The string "CREATE", commonly used as the verb for an HTTP CREATE request. |
| kHttpVerbDELETE | The string "DELETE", commonly used as the verb for an HTTP DELETE request. |
| kHttpVerbGET | The string "GET", commonly used as the verb for an HTTP GET request. |
| kHttpVerbHEAD | The string "HEAD", commonly used as the verb for an HTTP HEAD request. |
| kHttpVerbPOST | The string "POST", commonly used as the verb for an HTTP POST request. |
| kHttpVerbPUT | The string "PUT", commonly used as the verb for an HTTP PUT request. |

### Properties

| Property | Description |
| --- | --- |
| certificateHandler | Holds a reference to a CertificateHandler object, which manages certificate validation for this UnityWebRequest. |
| disposeCertificateHandlerOnDispose | If true, any CertificateHandler attached to this UnityWebRequest will have CertificateHandler.Dispose called automatically when UnityWebRequest.Dispose is called. |
| disposeDownloadHandlerOnDispose | If true, any DownloadHandler attached to this UnityWebRequest will have DownloadHandler.Dispose called automatically when UnityWebRequest.Dispose is called. |
| disposeUploadHandlerOnDispose | If true, any UploadHandler attached to this UnityWebRequest will have UploadHandler.Dispose called automatically when UnityWebRequest.Dispose is called. |
| downloadedBytes | Returns the number of bytes of body data the system has downloaded from the remote server. (Read Only) |
| downloadHandler | Holds a reference to a DownloadHandler object, which manages body data received from the remote server by this UnityWebRequest. |
| downloadProgress | Returns a floating-point value between 0.0 and 1.0, indicating the progress of downloading body data from the server. (Read Only) |
| error | A human-readable string describing any system errors encountered by this UnityWebRequest object while handling HTTP requests or responses. The default value is null. (Read Only) |
| httpForcedVersion | Force the version of HTTP used when making web requests with UnityWebRequest. |
| isDone | Returns true after the UnityWebRequest has finished communicating with the remote server. (Read Only) |
| isModifiable | Returns true while a UnityWebRequest’s configuration properties can be altered. (Read Only) |
| method | Defines the HTTP verb used by this UnityWebRequest, such as GET or POST. |
| redirectLimit | Indicates the number of redirects that this UnityWebRequest follows before halting with a Redirect Limit Exceeded system error. |
| responseCode | The numeric HTTP response code returned by the server, such as 200, 404 or 500. (Read Only) |
| result | The result of this UnityWebRequest. |
| timeout | The number of seconds after which UnityWebRequest attempts to abort the request if no response is received. |
| uploadedBytes | Returns the number of bytes of body data the system has uploaded to the remote server. (Read Only) |
| uploadHandler | Holds a reference to the UploadHandler object which manages body data to be uploaded to the remote server. |
| uploadProgress | Returns a floating-point value between 0.0 and 1.0, indicating the progress of uploading body data to the server. |
| uri | Defines the target URI for the UnityWebRequest to communicate with. |
| url | Defines the target URL for the UnityWebRequest to communicate with. |
| useHttpContinue | Determines whether this UnityWebRequest will include Expect: 100-Continue in its outgoing request headers. (Default: true). |

### Constructors

| Constructor | Description |
| --- | --- |
| UnityWebRequest | Creates a UnityWebRequest with the default options and no attached DownloadHandler or UploadHandler. Default method is GET. |

### Public Methods

| Method | Description |
| --- | --- |
| Abort | If in progress, halts the UnityWebRequest as soon as possible. |
| Dispose | Signals that this UnityWebRequest is no longer being used, and should clean up any resources it is using. |
| GetRequestHeader | Retrieves the value of a custom request header. |
| GetResponseHeader | Retrieves the value of a response header from the latest HTTP response received. |
| GetResponseHeaders | Retrieves a dictionary containing all the response headers received by this UnityWebRequest in the latest HTTP response. |
| SendWebRequest | Begin communicating with the remote server. |
| SetRequestHeader | Set a HTTP request header to a custom value. |

### Static Methods

| Method | Description |
| --- | --- |
| ClearCookieCache | Clears stored cookies from the cache. |
| Delete | Creates a UnityWebRequest configured for HTTP DELETE. |
| EscapeURL | Escapes characters in a string to ensure they are URL-friendly. |
| GenerateBoundary | Generate a random 40-byte array for use as a multipart form boundary. |
| Get | Create a UnityWebRequest for HTTP GET. |
| Head | Creates a UnityWebRequest configured to send a HTTP HEAD request. |
| Post | Creates a UnityWebRequest configured to send form data to a server via HTTP POST. |
| PostWwwForm | Creates a UnityWebRequest configured to send form data to a server via HTTP POST. |
| Put | Creates a UnityWebRequest configured to upload raw data to a remote server via HTTP PUT. |
| SerializeFormSections | Converts a List of IMultipartFormSection objects into a byte array containing raw multipart form data. |
| SerializeSimpleForm | Serialize a dictionary of strings into a byte array containing URL-encoded UTF8 characters. |
| UnEscapeURL | Converts URL-friendly escape sequences back to normal text. |
