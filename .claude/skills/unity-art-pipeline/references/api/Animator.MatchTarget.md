<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.MatchTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| matchPosition | The position we want the body part to reach. |
| matchRotation | The rotation in which we want the body part to be. |
| targetBodyPart | The body part that is involved in the match. |
| weightMask | Structure that contains weights for matching position and rotation. |
| startNormalizedTime | Start time within the animation clip (0 - beginning of clip, 1 - end of clip). |
| targetNormalizedTime | End time within the animation clip (0 - beginning of clip, 1 - end of clip), values greater than 1 can be set to trigger a match after a certain number of loops. Ex: 2.3 means at 30% of 2nd loop. |
| completeMatch | Allows you to specify what should happen if the MatchTarget function is interrupted. A value of true causes the GameObject to immediately move to the matchPosition if interrupted. A value of false causes the GameObject to stay at its current position if interrupted. |

### Description

Automatically adjust the `GameObject` position and rotation.

Adjust the `GameObject` position and rotation so that the AvatarTarget reaches the matchPosition when the current state is at the specified progress. Target matching only works on the base layer (index 0). You can only queue one match target at a time and you must wait for the first one to finish, otherwise your target matching will be discarded. If you call a MatchTarget with a start time lower than the clip's normalized time and the clip can loop, MatchTarget will adjust the time to match the next clip loop. For example, start time= 0.2 normalized time = 0.3, start time will be 1.2. Animator.applyRootMotion must be enabled for MatchTarget to take effect.

```csharp
using UnityEngine;public class TargetMatchingManager : MonoBehaviour
{
    public void MatchTarget(Vector3 matchPosition, Quaternion matchRotation, AvatarTarget target, MatchTargetWeightMask weightMask, float normalisedStartTime, float normalisedEndTime)
    {
        var animator = GetComponent<Animator>();        if (animator.isMatchingTarget)
            return;        float normalizeTime = Mathf.Repeat(animator.GetCurrentAnimatorStateInfo(0).normalizedTime, 1f);        if (normalizeTime > normalisedEndTime)
            return;        animator.MatchTarget(matchPosition, matchRotation, target, weightMask, normalisedStartTime, normalisedEndTime);
    }
}
```
