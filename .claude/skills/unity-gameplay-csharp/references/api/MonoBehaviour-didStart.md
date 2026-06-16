<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour-didStart.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a boolean value which represents if Start was called.

```csharp
using UnityEngine;public class NewBehaviourScript : MonoBehaviour
{
    void Awake()
    {
        // Awake gets called before Start, therefore will print 'false'.
        Debug.Log(this.didStart);
    }    void Start()
    {
        // Code is within Start, therefore will print 'true', as Start was called.
        Debug.Log(this.didStart);
    }
}
```
