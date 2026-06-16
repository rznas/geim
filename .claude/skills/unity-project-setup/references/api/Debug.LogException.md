<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Debug.LogException.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Object to which the message applies. |
| exception | Runtime Exception. |

### Description

A variant of Debug.Log that logs an exception message to the console.

When you select the message in the Editor's console, the `context` object to which the message applies is highlighted in the Hierarchy window. You can click the hyperlinks in the stack trace to go directly to the relevant lines of code in your code editor.

Additional resources: Debug.unityLogger, ILogger, Logger.LogException.

```csharp
using System;
using UnityEngine;
using System.Collections;public class MyGameClass : MonoBehaviour
{
    void MyGameMethod()
    {
        try
        {
            // Do something that can throw an exception
        }
        catch (Exception e)
        {
            Debug.LogException(e, this);
        }
    }
}
```

Note that this pauses the editor when 'ErrorPause' is enabled.
