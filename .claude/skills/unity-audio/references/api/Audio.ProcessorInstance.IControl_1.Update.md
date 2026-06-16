<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ProcessorInstance.IControl_1.Update.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called if you have subscribed to continuous updates from the control thread, or if there is data returned from the `TRealtime` counterpart.

This is guaranteed to be invoked before Dispose if there's any data that's been sent from Pipe.SendData and suitable flags have been set in ProcessorInstance.CreationParameters.controlUpdateSetting. 

Additional resources: ControlContext.Manual.Update, ControlContext.UpdateSetting
