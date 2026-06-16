<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioRenderer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allow recording the main output of the game or specific groups in the AudioMixer.

### Static Methods

| Method | Description |
| --- | --- |
| GetSampleCountForCaptureFrame | Returns the number of samples available since the last time AudioRenderer.Render was called. This is dependent on the frame capture rate. |
| Render | Performs the recording of the main output as well as any optional mixer groups that have been registered via AudioRenderer.AddMixerGroupSink. |
| Start | Enters audio recording mode. After this Unity will output silence until AudioRenderer.Stop is called. |
| Stop | Exits audio recording mode. After this audio output will be audible again. |
