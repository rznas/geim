<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Color-gamma.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A version of the color that has had the gamma curve applied.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Color newColor = new Color(0.3f, 0.4f, 0.6f);
        print(newColor.gamma);
    }
}
```
