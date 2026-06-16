<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Debug-isDebugBuild.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

In the Build Settings dialog there is a check box called "Development Build".

If it is checked isDebugBuild will be true. In the editor `isDebugBuild` always returns true. It is recommended to remove all calls to Debug.Log when deploying a game, this way you can easily deploy beta builds with debug prints and final builds without.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Log some debug information only if this is a debug build
        if (Debug.isDebugBuild)
        {
            Debug.Log("This is a debug build!");
        }
    }
}
```
