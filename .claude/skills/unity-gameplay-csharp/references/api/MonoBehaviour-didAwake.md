<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour-didAwake.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a boolean value which represents if Awake was called.

```csharp
using UnityEngine;public class NewBehaviourScript : MonoBehaviour
{
    void Awake()
    {
        // Code is within Awake, therefore will print 'true', as Awake was called.
        Debug.Log(this.didAwake);
    }    void Start()
    {
        // Will print 'true', as Start is called after Awake.
        Debug.Log(this.didAwake);
    }
}
```
