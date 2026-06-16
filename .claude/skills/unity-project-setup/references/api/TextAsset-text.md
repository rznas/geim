<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextAsset-text.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The text contents of the file as a string. (Read Only)

Encodings are detected and interpreted automatically. Supported encodings are:

- UTF-32 Big or Little Endian with a byte order mark,
- UTF-16 Big or Little Endian with a byte order mark,
- UTF-8 with a byte order mark,
- UTF-8 without a byte order mark. This encoding is used as a fallback, if the above encodings can't decode the file without missing characters.

To use a specific encoding to decode a file, use TextAsset.bytes and C# encoding classes.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    TextAsset asset;    void Start()
    {
        Debug.Log(asset.text);
    }
}
```

Additional resources: bytes, GetData, Text Assets.
