<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransformHandle-root.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the topmost transform in the hierarchy.

(This never returns TransformHandle.None, if this TransformHandle doesn't have a parent it returns itself.)

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    public GameObject Other;    // Dos this have the same root as other transform?
    void Start()
    {
        if (Other.transformHandle.root != transformHandle.root)
        {
            print("The objects are not in the same hierarchy");
        }
    }
}
```
