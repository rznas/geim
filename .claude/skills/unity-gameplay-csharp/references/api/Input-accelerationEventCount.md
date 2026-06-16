<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input-accelerationEventCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Number of acceleration measurements which occurred during last frame.

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Check if we got any acceleration measurements during last frame    void Update()
    {
        if (Input.accelerationEventCount > 0)
        {
            print("We got new acceleration measurements");
        }
    }
}
```
