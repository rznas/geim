<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Analytics.AnalyticsSettings-initializeOnStartup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls whether Unity initializes Analytics immediately on startup.

Set this property to false to delay the initialization of Analytics until you call Analytics.ResumeInitialization. For example, if you want to ask the player to opt-in to analytics data collection, set this property to false in an Editor script, ask the player, and then only call `ResumeInitialization` if they approve.

By default `InitializeOnStartup` is true. You can change the value in the Editor using a build script.

Additional resources: [Analytics.Analytics.InitializeOnStartup]], Analytics.ResumeInitialization
