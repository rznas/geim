<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.LateUpdate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

LateUpdate is called every frame, if the Behaviour is enabled.

LateUpdate is called after all Update functions have been called. This is useful to order script execution. For example a follow camera should always be implemented in LateUpdate because it tracks objects that might have moved inside Update.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void LateUpdate()
    {
        transform.Translate(0, Time.deltaTime, 0);
    }
}
```

In order to get the elapsed time since last call to LateUpdate, use Time.deltaTime. This function is only called if the Behaviour is enabled. Override this function in order to provide your component's functionality.
