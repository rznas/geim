<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SharedBetweenAnimatorsAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The SharedBetweenAnimatorsAttribute specifies that this StateMachineBehaviour is instantiated only once and shared by all Animator instances. This attribute reduces the memory footprint for each controller instance.

You choose which StateMachineBehaviour uses this attribute. If your StateMachineBehaviour changes a member variable, this affects all other Animator instances that use it. Additional resources: StateMachineBehaviour class.

```csharp
using UnityEngine;[SharedBetweenAnimators]
public class AttackBehaviour : StateMachineBehaviour
{
    public override void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        Debug.Log("OnStateEnter");
    }
}
```
