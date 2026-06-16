<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CrashReportHandler.CrashReportHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Engine API for CrashReporting Service.

### Static Properties

| Property | Description |
| --- | --- |
| enableCaptureExceptions | This Boolean field will cause CrashReportHandler to capture exceptions when set to true. By default enable capture exceptions is true. |
| logBufferSize | The Performance Reporting service will keep a buffer of up to the last X log messages (Debug.Log, etc) to send along with crash reports. The default is 10 log messages, the max is 50. Set this to 0 to disable capture of logs with your crash reports. |

### Static Methods

| Method | Description |
| --- | --- |
| GetUserMetadata | Get a custom crash report metadata field that has been set. |
| SetUserMetadata | Set a custom metadata key-value pair to be included with crash reports. |
