<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetBundle.LoadFromMemory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| binary | Array of bytes with the AssetBundle data. |
| crc | An optional CRC-32 checksum of the uncompressed content. If this is non-zero, then the content will be compared against the checksum before loading it, and give an error if it does not match. |

### Returns

**AssetBundle** Loaded AssetBundle object or null if failed.

### Description

Synchronously load an AssetBundle from a memory region.

Use this method to load an AssetBundle from an array of bytes. This is useful when you have downloaded the data with encryption and need to load the AssetBundle from the decrypted bytes.

Compared to LoadFromMemoryAsync, this version is synchronous and will not return until it is done creating the AssetBundle object.

```csharp
using UnityEngine;
using UnityEngine.Networking;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    byte[] MyDecrypt(byte[] binary)
    {
        // ...Perform some decryption process here to transform the input...
        return binary;
    }    IEnumerator Start()
    {
        var uwr = UnityWebRequest.Get("https://myserver/myBundle.unity3d");
        yield return uwr.SendWebRequest();
        byte[] decryptedBytes = MyDecrypt(uwr.downloadHandler.data);
        AssetBundle.LoadFromMemory(decryptedBytes);
    }
}
```

Additional resources: AssetBundle, LoadFromMemoryAsync, LoadFromFile.
