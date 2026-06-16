<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableBehaviour.ProcessFrame.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The Playable that owns the current PlayableBehaviour. |
| info | A FrameData structure that contains information about the current frame context. |
| playerData | The user data of the ScriptPlayableOutput that initiated the process pass. |

### Description

This function is called during the ProcessFrame phase of the PlayableGraph.

ProcessFrame is the stage at which your Playable does its work.

This method is called for each frame when a Playable plays and is connected, directly or indirectly, to a ScriptPlayableOutput.
