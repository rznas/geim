<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.ResetTrigger.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The parameter name. |
| id | The parameter ID. |

### Description

Resets the value of the given trigger parameter.

Use this to reset a Trigger parameter in an Animator Controller that could still be active. Make sure to create a parameter in the Animator Controller with the same name. See Animator.SetTrigger for more information about how to set a Trigger.

```csharp
//Attach this script to a GameObject with an Animator component attached.
//For this example, create parameters in the Animator and name them “Crouch” and “Jump”
//Apply these parameters to your transitions between states//This script allows you to trigger an Animator parameter and reset the other that could possibly still be active. Press the up and down arrow keys to do this.using UnityEngine;public class Example : MonoBehaviour
{
    Animator m_Animator;    void Start()
    {
        //Get the Animator attached to the GameObject you are intending to animate.
        m_Animator = gameObject.GetComponent<Animator>();
    }    void Update()
    {
        //Press the up arrow button to reset the trigger and set another one
        if (Input.GetKey(KeyCode.UpArrow))
        {
            //Reset the "Crouch" trigger
            m_Animator.ResetTrigger("Crouch");
            //Send the message to the Animator to activate the trigger parameter named "Jump"
            m_Animator.SetTrigger("Jump");
        }        if (Input.GetKey(KeyCode.DownArrow))
        {
            //Reset the "Jump" trigger
            m_Animator.ResetTrigger("Jump");
            //Send the message to the Animator to activate the trigger parameter named "Crouch"
            m_Animator.SetTrigger("Crouch");
        }
    }
}
```
