<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings.DecreaseLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| applyExpensiveChanges | Should expensive changes be applied (Anti-aliasing etc). |

### Description

Decrease the current quality level.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        QualitySettings.DecreaseLevel(false);
    }
}
```

IncreaseLevel and DecreaseLevel functions only apply anti-aliasing if applyExpensiveChanges is true.

Additional resources: IncreaseLevel, Quality Settings.
