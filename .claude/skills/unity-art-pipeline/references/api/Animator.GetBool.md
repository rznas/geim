<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.GetBool.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The parameter name. |
| id | The parameter ID. |

### Returns

**bool** The value of the parameter.

### Description

Returns the value of the given boolean parameter.

Return the current state of a bool parameter within the Animator Controller. Use the parameter’s name or ID to search for the appropriate one.

```csharp
//Attach this script to a GameObject with an Animator component attached.
//For this example, create parameters in the Animator and name them “Crouch” and “Jump”
//Apply these parameters to your transitions between states//This script allows you to set a Boolean Animator parameter on and set another Boolean parameter to off if it is currently playing. Press the space key to do this.using UnityEngine;public class AnimatorGetBool : MonoBehaviour
{
    //Fetch the Animator
    Animator m_Animator;
    // Use this to decide if the GameObject can jump or not
    bool m_Jump;    void Start()
    {
        //This gets the Animator, which should be attached to the GameObject you are intending to animate.
        m_Animator = gameObject.GetComponent<Animator>();
        // The GameObject cannot jump
        m_Jump = false;
    }    void Update()
    {
        //Press the space bar to enable the "Jump" parameter in the Animator Controller
        if (Input.GetKey(KeyCode.Space))
        {
            //Set the "Jump" parameter in the Animator Controller to true
            m_Animator.SetBool("Jump", true);
            //Check to see if the "Crouch" parameter is enabled
            if (m_Animator.GetBool("Crouch"))
            {
                //If the "Crouch" parameter is enabled, disable it as the Animation should no longer be crouching
                m_Animator.SetBool("Crouch", false);
            }
        }
        //Otherwise the "Jump" parameter should be false
        else m_Animator.SetBool("Jump", false);        //Press the down arrow key to enable the "Crouch" parameter
        if (Input.GetKey(KeyCode.DownArrow))
            m_Animator.SetBool("Crouch", true);
        else
            m_Animator.SetBool("Crouch", false);
    }
}
```
