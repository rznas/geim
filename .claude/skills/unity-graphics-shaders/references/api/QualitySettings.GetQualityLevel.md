<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings.GetQualityLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**int** Obtains the current Quality Level.

### Description

Returns the current graphics quality level.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        int qualityLevel = QualitySettings.GetQualityLevel();
    }
}
```

Additional resources: SetQualityLevel.
