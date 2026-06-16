<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CrashReporting.CrashReportingSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Editor API for the Unity Services editor feature. Normally CrashReporting is enabled from the Services window, but if writing your own editor extension, this API can be used.

### Static Properties

| Property | Description |
| --- | --- |
| captureEditorExceptions | This Boolean field will cause the CrashReporting feature in Unity to capture exceptions that occur in the editor while running in Play mode if true, or ignore those errors if false. |
| enabled | This Boolean field will cause the CrashReporting feature in Unity to be enabled if true, or disabled if false. |
| logBufferSize | The Performance Reporting service will keep a buffer of up to the last X log messages (Debug.Log, etc) to send along with crash reports. The default is 10 log messages, the max is 50. Set this to 0 to disable capture of logs with your crash reports. |
