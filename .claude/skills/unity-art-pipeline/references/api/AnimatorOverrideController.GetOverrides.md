<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatorOverrideController.GetOverrides.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| overrides | Array to receive results. |

### Description

Gets the list of Animation Clip overrides currently defined in this Animator Override Controller.

This function is allocation-free if you pre-allocate the overrides list with AnimatorOverrideController.overridesCount.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;public class ResetOverrides : MonoBehaviour
{
    public AnimatorOverrideController overrideController;
    protected List<KeyValuePair<AnimationClip, AnimationClip>> overrides;    public void ResetAllOverrides()
    {
        overrides = new List<KeyValuePair<AnimationClip, AnimationClip>>(overrideController.overridesCount);
        overrideController.GetOverrides(overrides);
        for (int i = 0; i < overrides.Count; ++i)
            overrides[i] = new KeyValuePair<AnimationClip, AnimationClip>(overrides[i].Key, null);
        overrideController.ApplyOverrides(overrides);
    }
}
```
