<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SearchService.ObjectSelectorSearch.RegisterEngine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| engine | The ObjectSelector search engine to register. |

### Description

Registers an ObjectSelector search engine dynamically.

If you set a dynamically registered engine as the active search engine via the Settings window, you must make sure to register it in subsequent Unity sessions before it is used. If you do not register it, Unity reverts to the default search engine.

Additional resources: ObjectSelectorSearch.UnregisterEngine.
