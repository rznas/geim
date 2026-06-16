<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.File.ReadAllBytes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Complete path of the file to open for reading. |

### Returns

**byte[]** Managed array of bytes of the complete file content.

### Description

Opens a binary file, reads the contents of the file into a byte array, and then closes the file.

If the file is not found, the function returns an empty array of bytes ( size=0 ).

```csharp
var filePath = "path_to_your_file/yourfile.dat";// Check if the file exists
if (File.Exists(filePath))
{
    // Read the entire file into a byte array
    var fileData = File.ReadAllBytes(filePath);    // Output the size of the file
    Debug.Log($"File size: {fileData.Length} bytes");
}
else
{
    Debug.LogError($"File not found at path: {filePath}");
}
```
