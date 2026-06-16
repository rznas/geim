<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject-transformHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The TransformHandle of the GameObject (Read Only).

Every GameObject has a TransformHandle, which cannot be removed.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        gameObject.transformHandle.Translate(1, 1, 1);
    }
}
```
