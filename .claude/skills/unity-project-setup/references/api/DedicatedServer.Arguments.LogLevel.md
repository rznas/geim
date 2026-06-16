<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DedicatedServer.Arguments.LogLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The minimum log level the server uses for console and file output.

The log level that Unity parses from the `-loglevel` command-line flag. If the flag isn't present, Unity uses the value from Dedicated Server Player settings. If no value is configured, this property returns `null`. The log level is an integer value where `0` is debug and `1` is info.
