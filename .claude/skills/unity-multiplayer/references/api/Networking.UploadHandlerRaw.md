<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UploadHandlerRaw.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A general-purpose UploadHandler subclass, using a native-code memory buffer.

This subclass copies input data into a native-code memory buffer at construction time, and transmits that data verbatim as HTTP request body data.

```csharp
using System;
using System.Text;
using System.Collections;
using UnityEngine;
using UnityEngine.Networking;public class ApiClient : MonoBehaviour
{
    // Example endpoint and auth token – replace with your own
    [SerializeField] private string baseUrl = "https://api.example.com";
    [SerializeField] private string authToken = "Bearer YOUR_TOKEN";    // Example payload data structure
    [Serializable]
    public class PlayerStats
    {
        public string playerId;
        public int score;
        public int level;
        public string region;
    }    private void Start()
    {
        var stats = new PlayerStats
        {
            playerId = SystemInfo.deviceUniqueIdentifier,
            score = 12345,
            level = 7,
            region = "NA"
        };        // Send JSON payload
        StartCoroutine(PostJson("/v1/stats", stats, onSuccess: response =>
        {
            Debug.Log($"Server response: {response}");
        },
        onError: error =>
        {
            Debug.LogError($"Upload failed: {error}");
        }));        // Send raw binary payload (example)
        var binaryData = GenerateMockBinary();
        StartCoroutine(PostBinary("/v1/upload-binary", binaryData, "application/octet-stream"));
    }    private IEnumerator PostJson(string path, object payload, Action<string> onSuccess, Action<string> onError)
    {
        string url = $"{baseUrl}{path}";        // Serialize to JSON
        string json = JsonUtility.ToJson(payload);
        byte[] bodyRaw = Encoding.UTF8.GetBytes(json);        using (var request = new UnityWebRequest(url, UnityWebRequest.kHttpVerbPOST))
        {
            // UploadHandlerRaw takes a byte[] buffer; it won’t copy data after construction,
            // so do not modify bodyRaw until request completes.
            request.uploadHandler = new UploadHandlerRaw(bodyRaw);
            request.uploadHandler.contentType = "application/json"; // sets Content-Type            // Always set a DownloadHandler to read server response
            request.downloadHandler = new DownloadHandlerBuffer();            // Optional headers
            request.SetRequestHeader("Authorization", authToken);
            request.SetRequestHeader("Accept", "application/json");
            // If your server requires a custom header:
            request.SetRequestHeader("X-Client-Version", Application.version);            // Reasonable timeout (seconds)
            request.timeout = 15;            // You can allow chunked transfer if server supports it
            request.chunkedTransfer = false; // default false; set true for streaming large bodies            // Send request
            yield return request.SendWebRequest();            // Handle result
            if (request.result == UnityWebRequest.Result.Success)
            {
                string responseText = request.downloadHandler.text;
                onSuccess?.Invoke(responseText);
            }
            else
            {
                // Build a detailed error message
                string errorMsg = $"HTTP {(int)request.responseCode} {request.error}";
                string serverBody = request.downloadHandler != null ? request.downloadHandler.text : "";
                if (!string.IsNullOrEmpty(serverBody))
                {
                    errorMsg += $" | Body: {serverBody}";
                }
                onError?.Invoke(errorMsg);
            }
        }
    }    private IEnumerator PostBinary(string path, byte[] data, string contentType)
    {
        string url = $"{baseUrl}{path}";        using (var request = new UnityWebRequest(url, UnityWebRequest.kHttpVerbPOST))
        {
            request.uploadHandler = new UploadHandlerRaw(data);
            request.uploadHandler.contentType = contentType; // e.g., "application/octet-stream"
            request.downloadHandler = new DownloadHandlerBuffer();            request.SetRequestHeader("Authorization", authToken);
            request.SetRequestHeader("Accept", "*/*");
            request.timeout = 30;            yield return request.SendWebRequest();            if (request.result == UnityWebRequest.Result.Success)
            {
                Debug.Log($"Binary upload OK. Response: {request.downloadHandler.text}");
            }
            else
            {
                Debug.LogError($"Binary upload failed: {(int)request.responseCode} {request.error}");
            }
        }
    }    private byte[] GenerateMockBinary()
    {
        // Example: create a simple byte array. In practice, this could be a file, image, or custom buffer.
        var buffer = new byte[256];
        for (int i = 0; i < buffer.Length; i++)
            buffer[i] = (byte)(i % 256);
        return buffer;
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| UploadHandlerRaw | General constructor. Contents of the input argument are copied into a native buffer. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| contentType | Determines the default Content-Type header which will be transmitted with the outbound HTTP request. |
| data | The raw data which will be transmitted to the remote server as body data. (Read Only) |
| progress | Returns the proportion of data uploaded to the remote server compared to the total amount of data to upload. (Read Only) |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Signals that this UploadHandler is no longer being used, and should clean up any resources it is using. |
