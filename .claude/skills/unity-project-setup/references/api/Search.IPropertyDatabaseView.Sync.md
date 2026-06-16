<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.IPropertyDatabaseView.Sync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Synchronizes the views so they have access to the same content.

This flushes the internal filestream of the view, so the data is written on disk and available to the other views. When PropertyDatabase.GetView is called with **delayedSync** set to true, the view is only synced when disposed. Otherwise the view is synced each time a store or invalidate happens. This allows you to sync the view whenever you need before disposing it.
