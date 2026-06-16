<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DedicatedServer.Arguments.LogPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The directory path where the dedicated server writes log files.

The log directory that Unity parses from the `-logpath` command-line flag. If the flag isn't present, Unity uses the value from Dedicated Server Player settings. If no value is configured, this property returns `null`. When you pass `-logfile` instead of `-logpath`, the getter returns the directory portion of the log file path.
