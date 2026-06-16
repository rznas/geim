<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Color-grayscale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The grayscale value of the color. (Read Only)

Unity uses the following formula to calculate the grayscale value: `(0.299f * Color.r) + (0.587f * Color.g) + (0.114f * Color.b)`.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Color newColor = new Color(0.3f, 0.4f, 0.6f);
        print(newColor.grayscale);
    }
}
```
