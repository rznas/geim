<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StateMachineBehaviour.OnStateMove.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| animator | The Animator evaluating this state machine. |
| animatorStateInfo | Information about the state being evaluated. |
| layerIndex | The current layer being evaluated. |

### Description

Invoked during the Animator Root Motion pass. Implement this message to modify the result of the animation root motion on a state by state basis.

OnStateMove is invoked every frame for the currently evaluated state, as well the next state and the interrupted state if applicable.
 It will be invoked after MonoBehaviour.OnAnimatorMove.
 **Note**: OnAnimatorMove may be invoked multiple times on the same state if that state is synchronized on multiple layers.
