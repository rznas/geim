<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ProcessorInstance.IControl_1.Dispose.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called when the generator is destroyed, after having left the processing thread.

Here you can clean up any resources that were allocated for the control or realtime thread. It may take an indeterminate amount of time between ControlContext.Destroy is called and this will be called, and there may be any number of Update calls inbetween. This is because destroying realtimes is an asynchronous process. 

Additional resources: RootOutputInstance.IRealtime.RemovedFromProcessing, ControlContext.Destroy
