<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandlerFile-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Path to file to be written. |
| append | When true, appends data to the given file instead of overwriting. |

### Description

Creates a new instance and a file on disk where downloaded data will be written to.

Throws an ArgumentException if a file cannot be created. If a path to a file in a non-existent directory is given, all required directories are created. If a file exists, it will be overwritten, unless in append mode. If a file doesn't exist, it is created regardless of append flag.
