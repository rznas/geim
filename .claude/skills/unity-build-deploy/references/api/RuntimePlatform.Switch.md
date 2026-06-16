<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RuntimePlatform.Switch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

In the player on Nintendo Switch.

Additional resources: RuntimePlatform, Platform dependent compilation.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void Example()
    {
        if (Application.platform == RuntimePlatform.Switch)
            Debug.Log("Do something special here!");
    }
}
```
