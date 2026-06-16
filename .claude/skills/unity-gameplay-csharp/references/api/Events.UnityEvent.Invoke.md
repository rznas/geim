<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Events.UnityEvent.Invoke.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Invoke all registered callbacks both runtime and persistent.

All registered callbacks will trigger when the event is invoked. A listener is invoked only once per event. The order of execution of the registered callbacks is not guaranteed.

```csharp
using UnityEngine;
using UnityEngine.Events;public class ExampleClass : MonoBehaviour
{
    UnityEvent m_MyEvent;    void Start()
    {
        if (m_MyEvent == null)
            m_MyEvent = new UnityEvent();        m_MyEvent.AddListener(OnEventTriggered);
    }    void Update()
    {
        if (Input.anyKeyDown && m_MyEvent != null)
        {
            //Invoke the event, triggering all registered callbacks.
            m_MyEvent.Invoke();
        }
    }    void OnEventTriggered()
    {
        Debug.Log("Callback executed");
    }
}
```
