<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ProcessorInstance.UpdateSetting.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Settings controlling how a ProcessorInstance is updated over the course of its lifetime.

Additional resources: ProcessorInstance.CreationParameters, ProcessorInstance.IControl_1.Update, ProcessorInstance.IRealtime.Update

### Properties

| Property | Description |
| --- | --- |
| Default | The default update setting for a ProcessorInstance. |
| NeverUpdate | Never invoke ProcessorInstance.IControl_1.Update on this processor nor ProcessorInstance.IRealtime.Update. |
| UpdateIfDataIsAvailable | Invoke ProcessorInstance.IControl_1.Update or ProcessorInstance.IRealtime.Update only if data has been sent or returned from ProcessorInstance.Pipe.SendData since the last update. |
| UpdateAlways | Always invoke ProcessorInstance.IControl_1.Update or ProcessorInstance.IRealtime.Update on this ProcessorInstance on every update. |
