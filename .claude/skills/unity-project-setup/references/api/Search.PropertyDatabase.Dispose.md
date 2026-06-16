<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.PropertyDatabase.Dispose.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Dispose of the resources used by this PropertyDatabase.

You should try to always call dispose when you no longer need the PropertyDatabase. Even if it is recommended to keep the PropertyDatabase alive as much as possible and use the views when accessing it, calling dispose will make sure that the lock that prevents multiple openings on the same file will be removed properly. It also helps removing pressure on the C# garbage collection by preventing the finalizer from being called.
