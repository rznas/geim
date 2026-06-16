<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.GeneratorInstance.IRealtime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The processing interface an implementation of a GeneratorInstance must implement on a struct to be fully formed.

The processing side of a ProcessorInstance receives various callbacks from a RealtimeContext from the logical processing thread. You can annotate this with Unity.Burst.BurstCompileAttribute to have it compiled with Burst. 

Additional resources: ProcessorInstance.IRealtime

### Public Methods

| Method | Description |
| --- | --- |
| Process | Called when you're asked to produce the next segment of audio into . |
