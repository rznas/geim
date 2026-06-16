<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ProcessorInstance.IControl_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base interface for common functionality of controlling a ProcessorInstance.

Here you can implement any control logic that is required for the realtime, that will run outside of the real-time thread.

 



 All ProcessorInstances must implement this interface to be fully formed, though usually each specific ProcessorInstance implements a more specific interface inheriting from this one. 

Additional resources: GeneratorInstance.IControl_1

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Called when the generator is destroyed, after having left the processing thread. |
| OnMessage | Called immediately from ControlContext.SendMessage when a message was sent to this ProcessorInstance. |
| Update | Called if you have subscribed to continuous updates from the control thread, or if there is data returned from the TRealtime counterpart. |
