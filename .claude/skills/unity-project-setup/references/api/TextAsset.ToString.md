<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextAsset.ToString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string** The contents of the text asset as a read-only string.

### Description

Returns the contents of the TextAsset as a read-only string.

Encodings are detected and interpreted automatically. Supported encodings are:

- UTF-32 big-endian or little-endian with a byte order mark.
- UTF-16 big-endian or little-endian with a byte order mark.
- UTF-8 with a byte order mark.
- UTF-8 without a byte order mark. This encoding is used as a fallback, if the above encodings can't decode the file without missing characters.

To use a specific encoding to decode a file, use TextAsset.bytes and C# encoding classes.

```csharp
using UnityEngine;public class ToStringExample : MonoBehaviour
{
    // Drag a .txt file onto this field and its contents log as a string.
    public TextAsset textFile;    void Start()
    {
        Debug.Log("Text file converted to string: " + textFile.ToString());
    }
}
```

Additional resources: bytes, GetData, Text Assets.
