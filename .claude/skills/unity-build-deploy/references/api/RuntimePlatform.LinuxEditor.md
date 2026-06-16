<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RuntimePlatform.LinuxEditor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

In the Unity editor on Linux.

Additional resources: RuntimePlatform, Platform dependent compilation.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        if (Application.platform == RuntimePlatform.LinuxEditor)
        {
            Debug.Log("Do something special here!");
        }
    }
}
```
