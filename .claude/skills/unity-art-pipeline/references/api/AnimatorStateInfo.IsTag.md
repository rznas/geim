<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatorStateInfo.IsTag.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tag | The tag to check. |

### Returns

**bool** True if the animation state has the specified tag, false otherwise.

### Description

Checks whether the animation state has the specified tag.

You can manually set a tag for each state in the Animator State inspector or with the AnimatorState.tag property. Use AnimatorStateInfo.IsTag to query if an activate state in the Animator component has a tag that matches a specific string. AnimatorStateInfo.IsTag calls Animator.StringToHash on the tag parameter and compares it to AnimatorStateInfo.tagHash internally; if you call that method often, consider precomputing the hash of the tag for a gain in performance.

Additional resources: AnimatorStateInfo.IsName, AnimatorState.tag.

```csharp
// This script demonstrates how to check if the current state of an Animator is tagged with a specific tag.

using UnityEngine;

[RequireComponent(typeof(Animator))]
public class AnimatorStateInfoIsTagExample : MonoBehaviour
{
    // The tag to check for.
    public string tagName = "Jump";

    // The Animator component on the GameObject this script is attached to.
    Animator m_Animator;

    void Start()
    {
        m_Animator = GetComponent<Animator>();
    }

    void Update()
    {
        // If the current state is tagged with the specified tag, log a message.
        var stateInfo = m_Animator.GetCurrentAnimatorStateInfo(0);
        if (stateInfo.IsTag(tagName))
        {
            Debug.Log($"Current state is tagged as {tagName}");
        }
    }
}
```
