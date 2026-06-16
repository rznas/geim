<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Component-gameObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The game object this component is attached to. A component is always attached to a game object.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        print(gameObject.name);
    }
}
```
