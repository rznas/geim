<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Event-current.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The current event that's being processed right now.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        Debug.Log("Current detected event: " + Event.current);
    }
}
```
