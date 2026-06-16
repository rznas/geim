<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StandaloneBuildSubtarget.Server.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Uses a player build optimized to run as a headless server.

When `StandaloneBuildSubtarget.Server` is selected, Unity compiles the standalone player for each target platform as follows:

**MacOS Player:** Compiled as a standard console application.

**Windows Player:** Compiled with `/System:Console` and runs as a standard Windows console application.

**Linux Player:** Compiled as a standard console application.

Unity defines `UNITY_SERVER` when it compiles scripts for a dedicated server build.
