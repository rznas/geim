<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.SetBool.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The parameter name. |
| id | The parameter ID. |
| value | The new parameter value. |

### Description

Sets the value of the given boolean parameter.

Use Animator.SetBool to pass Boolean values to an Animator Controller via script.

Use this to trigger transitions between Animator states. For example, triggering a death animation by setting an “alive” boolean to false. See documentation on Animation for more information on setting up Animators.

Note: You can identify the parameter by name or by ID number, but the name or ID number must be the same as the parameter you want to change in the Animator.

```csharp
//Set up a new Boolean parameter in the Unity Animator and name it, in this case “Jump”.
//Set up transitions between each state that the animation could follow. For example, the player could be running or idle before they jump, so both would need transitions into the animation.
//If the “Jump” boolean is set to true at any point, the m_Animator plays the animation. However, if it is ever set to false, the animation would return to the appropriate state (“Idle”).
//This script enables and disables this boolean in this case by listening for the mouse click or a tap of the screen.using UnityEngine;public class Example : MonoBehaviour
{
    //Fetch the Animator
    Animator m_Animator;
    // Use this for deciding if the GameObject can jump or not
    bool m_Jump;    void Start()
    {
        //This gets the Animator, which should be attached to the GameObject you are intending to animate.
        m_Animator = gameObject.GetComponent<Animator>();
        // The GameObject cannot jump
        m_Jump = false;
    }    void Update()
    {
        //Click the mouse or tap the screen to change the animation
        if (Input.GetMouseButtonDown(0))
            m_Jump = true;        //Otherwise the GameObject cannot jump.
        else m_Jump = false;        //If the GameObject is not jumping, send that the Boolean “Jump” is false to the Animator. The jump animation does not play.
        if (m_Jump == false)
            m_Animator.SetBool("Jump", false);        //The GameObject is jumping, so send the Boolean as enabled to the Animator. The jump animation plays.
        if (m_Jump == true)
            m_Animator.SetBool("Jump", true);
    }
}
```
