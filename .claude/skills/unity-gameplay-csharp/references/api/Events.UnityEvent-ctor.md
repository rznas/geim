<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Events.UnityEvent-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Initializes a new instance of the UnityEvent class.

Use the constructor without arguments to create a zero-argument event callback. If your event requires arguments, use the generic versions of UnityEvent.

```csharp
using UnityEngine;
using UnityEngine.Events;public class ExampleClass : MonoBehaviour
{
    UnityEvent m_ZeroArgEvent;
    UnityEvent<int> m_OneArgEvent;
    UnityEvent<int, int> m_TwoArgEvent;
    UnityEvent<int, int, int> m_ThreeArgEvent;
    UnityEvent<int, int, int, int> m_FourArgEvent;    void Start()
    {
        //Construct simple UnityEvents from 0 up to 4 int arguments.
        if (m_ZeroArgEvent == null)
            m_ZeroArgEvent = new UnityEvent();        if (m_OneArgEvent == null)
            m_OneArgEvent = new UnityEvent<int>();
            
        if (m_TwoArgEvent == null)
            m_TwoArgEvent = new UnityEvent<int, int>();        if (m_ThreeArgEvent == null)
            m_ThreeArgEvent = new UnityEvent<int, int, int>();        if (m_FourArgEvent == null)
            m_FourArgEvent = new UnityEvent<int, int, int, int>();
    }
}
```
