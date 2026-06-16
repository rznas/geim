<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DedicatedServer.Arguments.TargetFramerate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The target frame rate for the dedicated server process. This is the rate at which the server processes frames.

The target frame rate that Unity parses from the `-framerate` command-line flag. If the flag isn't present, Unity uses the value from Dedicated Server Player settings. If no value is configured, this property returns `null`. When set, Unity applies this value to Application.targetFrameRate.

 Additional resources: Arguments.TargetFramerate.
