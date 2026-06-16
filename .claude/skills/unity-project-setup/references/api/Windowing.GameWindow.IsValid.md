<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.GameWindow.IsValid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** True if this window is valid and not destroyed.

### Description

Returns true if this window is valid and not destroyed.

```csharp
using UnityEngine;
using UnityEngine.Windowing;public class IsWindowValidExample : MonoBehaviour
{
    void Start()
    {
        var window = GameWindow.Main;
        bool valid = window.IsValid();
        Debug.Log($"Is window valid: {valid}");
    }
}
```
