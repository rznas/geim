<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AvatarBuilder.BuildGenericAvatar.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| go | Root object of your transform hierarchy. |
| rootMotionTransformName | Transform name of the root motion transform. If empty no root motion is defined and you must take care of avatar movement yourself. |

### Description

Create a new generic avatar.

All transforms under the root game object will be part of this generic avatar.

```csharp
using UnityEngine;

// This example automatically builds a generic avatar
// for the GameObject it is attached to and assigns it
// to the Animator.
[RequireComponent(typeof(Animator))]
public class GenericAvatarBuilderExample : MonoBehaviour
{
    void Start()
    {
        var animator = GetComponent<Animator>();

        var avatar = AvatarBuilder.BuildGenericAvatar(gameObject, "");
        avatar.name = "RuntimeAvatar";

        animator.avatar = avatar;
    }
}
```
