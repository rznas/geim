<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gyroscope-updateInterval.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets or retrieves gyroscope interval in seconds.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Input.gyro.updateInterval = 0.01f;
    }
}
```
