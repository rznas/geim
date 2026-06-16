<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.AdaptivePerformanceManagerSettings-isInitializationComplete.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Read-only boolean that is true if initialization is completed and false otherwise. Because initialization is handled as a Coroutine, applications that use the auto-lifecycle management of AdaptivePerformanceManager will need to wait for init to complete before checking for an ActiveLoader and calling StartSubsystems.
