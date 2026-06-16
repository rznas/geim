<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorControllerPlayable.GetCurrentAnimatorStateInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| layerIndex | The layer index. |

### Returns

**AnimatorStateInfo** An AnimatorStateInfo with the information on the current state.

### Description

Returns an AnimatorStateInfo with the information on the current state.

Fetches the data from the current state in the AnimatorController. Use this to get details from the state, including accessing the state’s speed, length, name and other variables. For gathering information from the clips that the states hold, see AnimatorControllerPlayable.GetCurrentAnimatorClipInfo.
