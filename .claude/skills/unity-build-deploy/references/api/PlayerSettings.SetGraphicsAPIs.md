<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.SetGraphicsAPIs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| platform | Platform to set APIs for. |
| apis | Array of graphics APIs. |

### Description

Sets the graphics APIs used on a build platform.

By default each platform is using "automatic" graphics API detection and picks the best available one (see SetUseDefaultGraphicsAPIs). However it is possible to change that to explicitly limit the graphics APIs used. The passed APIs will be tried in the order they are given, and first available one will be used.

Additional resources: GetGraphicsAPIs, SetUseDefaultGraphicsAPIs, GetUseDefaultGraphicsAPIs.
