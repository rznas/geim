<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator-isInitialized.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns whether the animator is initialized successfully.

See Animator.Rebind to manually initialize the animator.

```csharp
using UnityEngine;public class CheckAndRebind : MonoBehaviour
{
    Animator animator;    void Start()
    {
        animator = GetComponent<Animator>();        if (!animator.isInitialized)
            animator.Rebind();
    }
}
```
