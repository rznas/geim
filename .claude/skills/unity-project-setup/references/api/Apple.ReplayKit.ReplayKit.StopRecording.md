<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Apple.ReplayKit.ReplayKit.StopRecording.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** A boolean value of True if recording stopped successfully or False if an error occurred.

### Description

Stop the current recording.

Stops the current recording, and makes it available for preview or discard, provided there are no errors. To show the recording, call Preview().

If ReplayKit.APIAvailable is false, this method does nothing and returns false.
