<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject-animation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Animation attached to this GameObject (Read Only). (Null if there is none attached).

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Use GetComponent to access the animation
    void Start()
    {
        gameObject.GetComponent<Animation>().Play();
    }
}
```
