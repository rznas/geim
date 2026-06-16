<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings-resolutionScalingFixedDPIFactor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

In resolution scaling mode, this factor is used to multiply with the target Fixed DPI specified to get the actual Fixed DPI to use for this quality setting.

Additional resources: Multi-Resolution UI, Quality Settings.

```csharp
using UnityEngine;public class StartupExampleScript : MonoBehaviour
{
    void Start()
    {
        // Set the target Fixed DPI for this quality setting to be half of the default.
        QualitySettings.resolutionScalingFixedDPIFactor = 0.5f;
    }
}
```

Additional resources: Quality Settings.
