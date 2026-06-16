<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Recorder.CollectFromAllThreads.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Configures the recorder to collect samples from all threads.

A recorder collects sample data from all threads by default, but if you have configured it to collect from only a single thread using Recorder.FilterToCurrentThread, then you can call this method afterwards to resume collection from all threads.
