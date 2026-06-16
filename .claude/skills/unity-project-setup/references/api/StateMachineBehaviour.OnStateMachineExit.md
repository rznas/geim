<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StateMachineBehaviour.OnStateMachineExit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| animator | The Animator evaluating the state machine. |
| stateMachinePathHash | The hash of the full path to the state machine. |

### Description

Invoked on the last update frame when taking a transition out of a StateMachine. Implement this message to influence the exit transition out of the sub-state machine

**Notes**:
 - This message will only be invoked when a State Machine exit transition is taken. It will not be invoked if a direct transition to a state machine sub-state is taken.
 - Since this message is invoked during the evaluation of the state machine and can influence the transitions taken, implementing this message in your state machine prevents multithreaded state machine evaluation and may be a performance concern.
