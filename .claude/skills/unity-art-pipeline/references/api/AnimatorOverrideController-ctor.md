<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatorOverrideController-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates an empty Animator Override Controller.

### Parameters

| Parameter | Description |
| --- | --- |
| controller | Runtime Animator Controller to override. |

### Description

Creates an Animator Override Controller that overrides **controller**.

Although the Animator Override Controller doesn't support nested Animator Override Controller, this constructor will find the right controller for you.

```csharp
using UnityEngine;public class SwapWeapon : MonoBehaviour
{
    protected Animator animator;
    protected AnimatorOverrideController animatorOverrideController;    public void Start()
    {
        animator = GetComponent<Animator>();        animatorOverrideController = new AnimatorOverrideController(animator.runtimeAnimatorController);
        animator.runtimeAnimatorController = animatorOverrideController;
    }
}
```
