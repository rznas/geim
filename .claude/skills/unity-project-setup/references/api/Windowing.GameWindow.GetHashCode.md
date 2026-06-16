<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.GameWindow.GetHashCode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**int** The hash code for this window.

### Description

Returns the hash code for this window.

```csharp
using UnityEngine;
using UnityEngine.Windowing;public class WindowHashExample : MonoBehaviour
{
    void Start()
    {
        var window = GameWindow.Main;
        int hash = window.GetHashCode();
        Debug.Log($"Window hash: {hash}");
    }
}
```
