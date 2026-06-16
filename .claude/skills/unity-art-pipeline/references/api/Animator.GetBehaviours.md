<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.GetBehaviours.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns all StateMachineBehaviour that match type `T` or are derived from `T`. Returns null if none are found.

```csharp
using UnityEngine;
using System.Collections;// An example StateMachineBehaviour.
public class BreathBehaviour : StateMachineBehaviour
{
    public bool  fastBreath;    // OnStateUpdate is called at each Update frame between OnStateEnter and OnStateExit callback
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        animator.SetBool("FastBreath", fastBreath);
    }
}
public class RunBehaviour : StateMachineBehaviour
{
    // OnStateUpdate is called at each Update frame between OnStateEnter and OnStateExit callback
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        BreathBehaviour[] breathBehaviours = animator.GetBehaviours<BreathBehaviour>();
        for (int i = 0; i < breathBehaviours.Length; i++)
            breathBehaviours[i].fastBreath = true;
    }
}
```
