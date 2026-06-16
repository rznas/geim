<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextMesh-tabSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

How much space will be inserted for a tab '\t' character. This is a multiplum of the 'spacebar' character offset.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        GetComponent<TextMesh>().tabSize = 5;
    }
}
```
