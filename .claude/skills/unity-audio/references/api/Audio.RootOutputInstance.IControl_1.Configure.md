<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.RootOutputInstance.IControl_1.Configure.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| realtime | The realtime instance that will be used in the processing thread. In case of reconfiguration, the is temporarily suspended from processing, and you can safely modify its properties. |
| format | The updated system format. This is the same as ControlContext runs with. |
| context | The context this RootOutputInstance is being configured from. |

### Returns

**void** Optionally you can return a non-default JobHandle allowing you to do heavier configuration/setup on a worker thread.

### Description

Called to configure the RootOutputInstance before it is used, and when the audio system reconfigures.

Additional resources: AudioSettings.Reset
