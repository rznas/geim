<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GfxThreadingMode.SplitJobs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Split Graphics Jobs.

Main thread starts worker threads to write Unity graphics commands. Render thread reads Unity graphics commands converts them to native graphics commands. The render thread also starts worker threads to write native graphics commands.
