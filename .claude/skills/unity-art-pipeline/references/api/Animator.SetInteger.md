<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.SetInteger.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The parameter name. |
| id | The parameter ID. |
| value | The new parameter value. |

### Description

Sets the value of the given integer parameter.

Use this as a way to trigger transitions between Animator states. One way of using Integers instead of Floats or Booleans is to use it for something that has multiple states, for example directions (turn left, turn right etc.). Each direction could correspond to a number instead of having multiple Booleans that have to be reset each time.

See documentation on Animation for more information on setting up Animators.

Note: You can identify the parameter by name or by ID number, but the name or ID number must be the same as the parameter you want to change in the Animator.

```csharp
//This script sends messages to an Animator component to tell it to make transitions based on an integer named “States”. You change and send this integer to the Animator by pressing the space and arrow keys.//In order for this script to work, you have to set up your Animator Controller so the script can interact with it.
//Create a new Animator Controller if you do not already have one you want to use. To do this, click on the GameObject you want to animate and go to its Inspector window. Click the Add Component button and go to Miscellaneous>Animator).
//Double click the Animator to see the Animator Controller window.  Open the Parameters tab and click the plus icon to add a new parameter. Choose Int from the dropdown. Name the new Integer (for this script, call it “States”).
//Create a few animation states (right click the grid and choose Create State>Empty) and choose an Animation for each in the Motion field.
//Next create transitions between each of the states (right click the state, choose Make Transition and click on the state you want it to transition to).
//Finally, click on one of the arrows to bring up its Inspector. Click the + icon under the Conditions section and choose the parameter you made (“States”). Change Greater to Equals and choose a number that you want to represent this state. Do the same with any other states.
//You may want to set up transitions back to the first animation state so that when the button is let go, it will return to the first state. You may also want to uncheck the Has Exit Time box for each transition. Otherwise transitions will wait for an animation to finish before proceeding.using UnityEngine;public class AnimatorSetIntExample : MonoBehaviour
{
    Animator m_Animator;    void Start()
    {
        //Fetch the Animator from the GameObject you attached the script to
        m_Animator = GetComponent<Animator>();
    }    void Update()
    {
        //Check if the horizontal buttons (A,D, left and right arrow keys) are being pressed
        if (Input.GetAxis("Horizontal") > 0 || Input.GetAxis("Horizontal") < 0)
            //Set the integer named "States" in your Animator to 1. If the Animator is set up properly, this should trigger an animation.
            m_Animator.SetInteger("States", 1);
        //Press the down arrow key to start another animation transition
        else if (Input.GetKey(KeyCode.DownArrow))
            //Set the "States" integer to 2. This triggers the animation that should start when "States" is equal to 2
            m_Animator.SetInteger("States", 2);
        //Press the space key to set the "States integer to 3
        else if (Input.GetKey(KeyCode.Space))
            m_Animator.SetInteger("States", 3);
        else
            //If all the other keys are let go, set the "States" integer to 0.
            m_Animator.SetInteger("States", 0);
    }
}
```
