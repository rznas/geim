<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings-pixelLightCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum number of pixel lights that should affect any object.

If there are more lights illuminating an object, the dimmest ones will be rendered as vertex lights.

Use this from scripting if you want to have finer control than offered by quality settings levels.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Use at most one pixel light for every object
        QualitySettings.pixelLightCount = 1;
    }
}
```

Additional resources: Quality Settings.
