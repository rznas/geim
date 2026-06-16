<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ControlContext.AllocateRootOutput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| controlState | The initial state available from the control thread. |
| realtimeState | The initial state available from the control thread. |
| creationParameters | Additional parameters and initialization state for the processor. |

### Returns

**RootOutputInstance** A RootOutputInstance you own and control, that must later be destroyed with ControlContext.Destroy.

### Description

Allocate a RootOutputInstance with the specified processor and control state.

RootOutputInstances have low-level acces to the threading model of the audio system and the final audio output, and are generally used to integrate larger internal or external audio systems.
