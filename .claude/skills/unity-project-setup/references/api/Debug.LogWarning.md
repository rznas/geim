<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Debug.LogWarning.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| message | String or object to be converted to string representation for display. |
| context | Object to which the message applies. |

### Description

A variant of Debug.Log that logs a warning message to the console.

When you select the message in the Editor's console, the `context` object to which the message applies is highlighted in the Hierarchy window. You can click the hyperlinks in the stack trace to go directly to the relevant lines of code in your code editor.

When the message is a string, rich text markup can be used to add emphasis. See the manual page about rich text for details of the different markup tags available.

Additional resources: Debug.unityLogger, ILogger, Logger.LogWarning.

```csharp
using UnityEngine;
using System.Collections;public class MyGameClass : MonoBehaviour
{
    private Transform transform;    void MyGameMethod()
    {
        if (transform == null)
            Debug.LogWarning("A warning assigned to this transform!", transform);
    }
}
```
