<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-platform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the platform the game is running on (Read Only).

Use this property if you need to do some platform dependent work.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        if (Application.platform == RuntimePlatform.WindowsPlayer)
            Debug.Log("Do something special here");
    }
}
```

Additional resources: RuntimePlatform enum, SystemInfo class.
