<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Events.UnityEventBase.GetPersistentListenerState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | Index of the listener to query. |

### Returns

**UnityEventCallState** Execution state of the persistent listener.

### Description

Returns the execution state of a persistent listener.

```csharp
using UnityEngine;
using UnityEngine.Events;public class Example : MonoBehaviour
{
    public UnityEvent onAction;    void Start()
    {
        // Prints out the details of all persistent events
        for (int i = 0; i < onAction.GetPersistentEventCount(); ++i)
        {
            var target = onAction.GetPersistentTarget(i);
            var method = onAction.GetPersistentMethodName(i);
            var state = onAction.GetPersistentListenerState(i);            Debug.Log($"{target}:{method}({state})");
        }
    }
}
```
