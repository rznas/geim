<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StateMachineBehaviour.OnStateUpdate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| animator | The Animator evaluating this state machine. |
| animatorStateInfo | Information about the state being evaluated. |
| layerIndex | The current layer being evaluated. |

### Description

Invoked on each update frame except for the first and last frame. Implement this message to execute custom logic on a state by state basis.

OnStateUpdate is invoked every frame for the currently evaluated state, as well the next state and the interrupted state if applicable.
 **Note**: OnStateUpdate may be invoked multiple times on the same state if that state is synchronized on multiple layers.
