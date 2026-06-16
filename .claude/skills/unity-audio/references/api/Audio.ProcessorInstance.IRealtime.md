<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ProcessorInstance.IRealtime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base interface for the common processing logic of a ProcessorInstance.

All ProcessorInstances must implement this interface to be fully formed, though usually each specific ProcessorInstance implements a more specific interface inheriting from this one. 

Additional resources: GeneratorInstance.IRealtime, ProcessorInstance.IControl_1

### Public Methods

| Method | Description |
| --- | --- |
| Update | Implement this function to react to data sent to the ProcessorInstance or communicate something back. |
