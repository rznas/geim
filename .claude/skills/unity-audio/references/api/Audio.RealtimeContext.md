<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.RealtimeContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A temporary context tied to a particular mix cycle, and generally passed along when processing ProcessorInstances.

This also gives access to communicating data together with a ProcessorInstance.Pipe. 

Additional resources: ControlContext.Manual.BeginMix

### Properties

| Property | Description |
| --- | --- |
| dspTime | The DSP time at which the mix cycle began. |
| isCreated | True if this context was ever created. |

### Public Methods

| Method | Description |
| --- | --- |
| Process | Manually process this particular GeneratorInstance. |
