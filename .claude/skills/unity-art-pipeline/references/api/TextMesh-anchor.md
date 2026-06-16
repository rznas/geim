<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextMesh-anchor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Which point of the text shares the position of the Transform.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        GetComponent<TextMesh>().anchor = TextAnchor.MiddleCenter;
    }
}
```
