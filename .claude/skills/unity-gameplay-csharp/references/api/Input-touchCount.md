<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input-touchCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Number of touches. Guaranteed not to change throughout the frame. (Read Only)

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Update()
    {
        if (Input.touchCount > 0)
        {
            print(Input.touchCount);
        }
    }
}
```
