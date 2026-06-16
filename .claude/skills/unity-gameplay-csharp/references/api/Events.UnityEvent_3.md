<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Events.UnityEvent_3.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Three argument version of UnityEvent.

Generics are supported, specify type parameters on initialization as shown in the example. Refer to Configure callbacks in the Inspector for details on configuring callbacks in the Inspector window.

```csharp
using UnityEngine;
using UnityEngine.Events;public class ExampleClass : MonoBehaviour
{
    UnityEvent<int, int, int> m_MyEvent;    void Start()
    {
        if (m_MyEvent == null)
            m_MyEvent = new UnityEvent<int, int, int>();        m_MyEvent.AddListener(DoSomething);
    }    void Update()
    {
        if (Input.anyKeyDown && m_MyEvent != null)
        {
            m_MyEvent.Invoke(5, 6, 7);
        }
    }    void DoSomething(int i, int j, int k)
    {
        Debug.Log("Callback called " + i + ", " + j + ", " + k);
    }
}
```

Note: UnityEvent can also be awaited in any async method.

### Inherited Members

### Public Methods

| Method | Description |
| --- | --- |
| GetPersistentEventCount | Get the number of registered persistent listeners. |
| GetPersistentListenerState | Returns the execution state of a persistent listener. |
| GetPersistentMethodName | Get the target method name of the listener at index index. |
| GetPersistentTarget | Get the target component of the listener at index index. |
| RemoveAllListeners | Remove all non-persistent (ie created from script) listeners from the event. |
| SetPersistentListenerState | Modify the execution state of a persistent listener. |

### Static Methods

| Method | Description |
| --- | --- |
| GetValidMethodInfo | Given an object, function name, and a list of argument types; find the method that matches. |
