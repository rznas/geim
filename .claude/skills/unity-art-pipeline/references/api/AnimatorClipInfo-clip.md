<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatorClipInfo-clip.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the animation clip played by the Animator.

```csharp
//Create a GameObject and attach an Animator component (Click the Add Component button in the Inspector of the GameObject and go to Miscellaneous>Animator). Set up the Animator how you would like.
//Attach this script to the GameObject//This script outputs the current clip from the Animator to the consoleusing UnityEngine;public class Example : MonoBehaviour
{
    Animator m_Animator;
    AnimatorClipInfo[] m_AnimatorClipInfo;    void Start()
    {
        //Fetch the Animator component from the GameObject
        m_Animator = GetComponent<Animator>();
        //Get the animator clip information from the Animator Controller
        m_AnimatorClipInfo = m_Animator.GetCurrentAnimatorClipInfo(0);
        //Output the name of the starting clip
        Debug.Log("Starting clip : " + m_AnimatorClipInfo[0].clip);
    }
}
```
