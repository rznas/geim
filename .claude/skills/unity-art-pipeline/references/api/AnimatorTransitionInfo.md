<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatorTransitionInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Information about the current transition on a specific state machine layer.

Use Animator.GetAnimatorTransitionInfo to access transition information during playmode. Use this information to, for example, check the current transition and measure its progress. You can use the weight of the target state to measure the progress of a transition.

This struct is not related to AnimatorTransition which is only available in the Editor and is used to build state machine transitions from code.

Additional resources: AnimatorStateInfo Animator.GetAnimatorTransitionInfo AnimatorControllerPlayable.GetAnimatorTransitionInfo.

```csharp
using UnityEngine;

// MonoBehaviour that sets the IK position and weight of the right hand when the character transitions to a "Grab" animation
// state.
[RequireComponent(typeof(Animator))]
public class GrabBehaviour : MonoBehaviour
{
    private Animator m_Animator;

    public Transform grabTarget;

    void Start()
    {
        m_Animator = GetComponent<Animator>();
    }

    void OnAnimatorIK(int layerIndex)
    {
        float ikWeight;

        var transitionInfo = m_Animator.GetAnimatorTransitionInfo(0);
        if (transitionInfo.IsName("Locomotion -> Grab"))
        {
            // When the character transitions from "Locomotion" to "Grab" state, do not immediately 
            // set the IK weight from 0 to 1 to avoid the hand instantly snapping to the target.
            // The IK weight changes at the same rate as the animation state. For example, when the
            // transition is halfway through, the IK weight is 0.5.
            ikWeight = transitionInfo.normalizedTime;
        }
        else
        {
            // The IK weight is 0 when the "Locomotion" state is active and 1 when the "Graph" state is active.
            ikWeight = m_Animator.GetCurrentAnimatorStateInfo(0).IsName("Grab") ? 1f : 0f;
        }

        m_Animator.SetIKPositionWeight(AvatarIKGoal.RightHand, ikWeight);
        if (ikWeight > 0f)
        {
            m_Animator.SetIKPosition(AvatarIKGoal.RightHand, grabTarget.position);
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| anyState | Returns true if the transition is from an AnyState node, or from Animator.CrossFade. |
| duration | Duration of the transition. |
| durationUnit | The unit of the transition duration. |
| fullPathHash | The hash name of the Transition. |
| nameHash | The simplified name of the Transition. |
| normalizedTime | Normalized time of the Transition. |
| userNameHash | The user-specified name of the Transition. |

### Public Methods

| Method | Description |
| --- | --- |
| IsName | Does name match the name of the active Transition. |
| IsUserName | Does userName match the name of the active Transition. |
