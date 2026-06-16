<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings-antiAliasing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Choose the level of Multi-Sample Anti-aliasing (MSAA) that the GPU performs.

The value indicates the number of samples per pixel. Valid values are 0 (no MSAA), 2, 4, and 8. If the graphics API does not support the value you provide, it uses the next highest supported value.

MSAA is compatible only with Forward rendering. For more information on other types of anti-aliasing and compatibility, see Post processing.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Set AntiAliasing to use 2x Multisampling
        QualitySettings.antiAliasing = 2;
    }
}
```

Additional resources: Quality Settings.
