<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator-leftFeetBottomHeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get left foot bottom height.

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
            Vector3 leftFootT = animator.GetIKPosition(AvatarIKGoal.LeftFoot);
            Quaternion leftFootQ = animator.GetIKRotation(AvatarIKGoal.LeftFoot);            Vector3 leftFootH = new Vector3(0, -animator.leftFeetBottomHeight, 0);            Vector3 pos = leftFootT + leftFootQ * leftFootH;
            Debug.Log(pos);
        }
    }
}
```
