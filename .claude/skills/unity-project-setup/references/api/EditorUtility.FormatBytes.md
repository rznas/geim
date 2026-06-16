<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.FormatBytes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a text for a number of bytes.

```csharp
using UnityEngine;
using UnityEditor;public class FormatBytesExample : MonoBehaviour
{
    void Start()
    {
        // prints "100 bytes"
        print(EditorUtility.FormatBytes(100));        // prints "2.0 KB"
        print(EditorUtility.FormatBytes(2048));
    }
}
```
