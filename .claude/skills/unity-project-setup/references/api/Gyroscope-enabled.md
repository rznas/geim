<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gyroscope-enabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets or retrieves the enabled status of this gyroscope.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    bool enableTilt;    void OnGUI()
    {
        if (Input.gyro.enabled)
        {
            GUILayout.Toggle(enableTilt, "Enable tilt control");
        }        // Other GUI elements...
    }
}
```
