<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RuntimePlatform.WindowsPlayer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

In the player on Windows.

Additional resources: RuntimePlatform, Platform dependent compilation.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        if (Application.platform == RuntimePlatform.WindowsPlayer)
        {
            Debug.Log("Do something special here!");
        }
    }
}
```
