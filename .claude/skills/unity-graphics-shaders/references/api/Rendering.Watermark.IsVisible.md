<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.Watermark.IsVisible.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** True, if the watermark is visible.

### Description

Returns `true` if the watermark is visible on-screen. Whether the watermark is visible depends on your build settings and Unity plan.

The following code sample checks if the watermark is visible.

```csharp
using System.Collections;
using UnityEngine;
using UnityEngine.Rendering;public class WatermarkExample : MonoBehaviour
{
    void Start()
    {
        if(Watermark.IsVisible())
        {
            Debug.Log("Watermark is visible in current setup");
        }
    }
}
```
