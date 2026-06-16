<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextMesh-text.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The specified input text to display.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Set the text of the attached Text mesh
        GetComponent<TextMesh>().text = "Hello World";
    }
}
```
