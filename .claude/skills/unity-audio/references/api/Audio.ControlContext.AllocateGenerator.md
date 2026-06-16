<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ControlContext.AllocateGenerator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| controlState | The initial state available from the control thread. |
| realtimeState | The initial state available from the control thread. |
| nestedFormat | If not null, the returned GeneratorInstance will be treated as nested and use this format. |
| creationParameters | Additional parameters and initialization state for the processor. This is generally received from IAudioGenerator.CreateInstance |

### Returns

**void** A GeneratorInstance you own and control, that must later be destroyed with ControlContext.Destroy.

### Description

Allocate a GeneratorInstance with the specified realtime and control state.

This can generally be used to render the output of a IAudioGenerator, potentially from within another GeneratorInstance. 

Additional resources: IAudioGenerator.CreateInstance
