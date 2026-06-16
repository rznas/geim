<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CrashReportHandler.CrashReportHandler.SetUserMetadata.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set a custom metadata key-value pair to be included with crash reports.

Set a value to null to clear a key.

Keys are limited to 255 characters and values to 1024 characters, and there is a limit of 64 key-value pairs. SetUserMetadata throws a System.ArgumentException if you attempt to exceed these limits.
