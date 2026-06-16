<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator-rightFeetBottomHeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get right foot bottom height.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Animator animator;    void Start()
    {
        animator = GetComponent<Animator>();
    }    void LateUpdate()
    {
        if (animator)
        {
            Vector3 rightFootT = animator.GetIKPosition(AvatarIKGoal.RightFoot);
            Quaternion rightFootQ = animator.GetIKRotation(AvatarIKGoal.RightFoot);            Vector3 rightFootH = new Vector3(0, -animator.rightFeetBottomHeight, 0);            Vector3 pos = rightFootT + rightFootQ * rightFootH;
            Debug.Log(pos);
        }
    }
}
```
