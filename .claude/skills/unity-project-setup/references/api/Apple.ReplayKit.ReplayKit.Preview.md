<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Apple.ReplayKit.ReplayKit.Preview.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** A boolean value of True if the video preview window opened successfully or False if an error occurred.

### Description

Preview the current recording

Opens a new iOS-specific video preview as a modal window. The preview screen has options to trim, cut and share the recording via the built-in iOS share panel.

If ReplayKit.APIAvailable is false, this method does nothing and returns false.
