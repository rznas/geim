<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.RealtimeContext.Process.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | The RealtimeContext associated with this call. You either get this from your own callback, or from ControlContext.Manual.BeginMix. |
| args | Additional arguments passed along, which can be default-initialized. |
| buffer | The buffer the GeneratorInstance will put its processing result into. |

### Returns

**Result** A Result struct indicating amongst other things how many frames were actually written into .

### Description

Manually process this particular GeneratorInstance.

In most use cases, you would not call this directly, but rather have the audio system call it for you. If you are yourself nesting a GeneratorInstance inside another ProcessorInstance, you would call this. 

Additional resources: System.Diagnostics.Process
