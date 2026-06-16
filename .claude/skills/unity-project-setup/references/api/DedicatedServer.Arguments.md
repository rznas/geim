<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DedicatedServer.Arguments.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

DedicatedServer.Arguments provide accessors for common CLI options.

Use the `Arguments` class to read or override dedicated server settings that Unity parses from the process command line at startup. Each property maps to a command-line flag. When you launch a server without a command-line flag, Unity uses the value from Dedicated Server Player settings. If a value isn't set on the command line or in Player settings, the corresponding property returns `null`.

 To list supported command-line flags, launch the server with `-help`.

### Static Properties

| Property | Description |
| --- | --- |
| ErrorPolicy | The policy Unity uses when dedicated server command-line arguments are invalid. |
| LogLevel | The minimum log level the server uses for console and file output. |
| LogPath | The directory path where the dedicated server writes log files. |
| Port | The port on which the server listens for connections. |
| QueryPort | The port on which the server listens for status query requests. |
| QueryType | The query protocol the dedicated server uses to handle status requests. |
| TargetFramerate | The target frame rate for the dedicated server process. This is the rate at which the server processes frames. |
