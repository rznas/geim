<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.StartRecording.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| frameCount | The number of frames (updates) that will be recorded. If frameCount is 0, the recording will continue until the user calls StopRecording. The maximum value for frameCount is 10000. |

### Description

Sets the animator in recording mode, and allocates a circular buffer of size *frameCount*.

After this call, the recorder starts collecting up to *frameCount* frames in the buffer. Note it is not possible to start playback until a call to StopRecording is made. Additional resources: StopRecording, recorderStartTime, recorderStopTime, StartPlayback, StopPlayback, playbackTime.
