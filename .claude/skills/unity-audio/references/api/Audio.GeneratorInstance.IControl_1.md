<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.GeneratorInstance.IControl_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The control interface an implementation of a GeneratorInstance must implement on a struct to be fully formed.

The control side of a ProcessorInstance receives various callbacks from a ControlContext from the logical control thread. You can annotate this with Unity.Burst.BurstCompileAttribute to have it compiled with Burst. 

Additional resources: ProcessorInstance.IControl_1

### Public Methods

| Method | Description |
| --- | --- |
| Configure | Called to configure the GeneratorInstance before it is used, and when the audio system reconfigures. A default implementation will set the and based on the . |
