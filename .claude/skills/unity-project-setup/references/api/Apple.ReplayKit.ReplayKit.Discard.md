<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Apple.ReplayKit.ReplayKit.Discard.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** A boolean value of True if the recording was discarded successfully or False if an error occurred.

### Description

Discard the current recording.

Discards the current recording, if it exists. Does nothing if there is no current recording.

If ReplayKit.APIAvailable is false, this method does nothing and returns false.
