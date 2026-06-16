<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.GeneratorInstance.IRealtime.Process.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | The RealtimeContext associated with this call. Use this to process any nested ProcessorInstances or query/return data together with . |
| pipe | Cross-thread communications pipe. |
| buffer | The buffer your GeneratorInstance will put its processing result into. |
| args | Addtional arguments. |

### Returns

**void** A Result struct indicating amongst other things how many frames were actually written into .

### Description

Called when you're asked to produce the next segment of audio into .

Additional resources: RealtimeContext.Process
