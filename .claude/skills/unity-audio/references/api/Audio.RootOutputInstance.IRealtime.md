<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.RootOutputInstance.IRealtime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The processing interface an implementation of a RootOutputInstance must implement on a struct to be fully formed.

The processing side of a ProcessorInstance receives various callbacks from a RealtimeContext from the logical processing thread. You can annotate this with Unity.Burst.BurstCompileAttribute to have it compiled with Burst. 

Additional resources: ProcessorInstance.IRealtime

### Public Methods

| Method | Description |
| --- | --- |
| EarlyProcessing | Perform any tasks necessary before any other resource managed by this RootOutputInstance is being used by anything else. |
| EndProcessing | Return the main result of your computation to the system in . |
| Process | Schedule your main body of work in parallel to everything else. If you are using jobs, you are required to manually keep track of dependencies and finish them later. |
| RemovedFromProcessing | Called potentially after a sequence of ProcessorInstance.IRealtime.Update, when a ProcessorInstance has been disposed from eg. ControlContext.Destroy. |
