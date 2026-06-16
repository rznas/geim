<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.GetUseDefaultGraphicsAPIs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| platform | Platform to get the flag for. |

### Returns

**bool** Should best available graphics API be used.

### Description

Is a build platform using automatic graphics API choice?

By default each platform is using "automatic" graphics API detection and picks the best available one. However it is possible to change that to explicitly limit the graphics APIs used, see SetGraphicsAPIs.

Additional resources: SetUseDefaultGraphicsAPIs, GetGraphicsAPIs, SetGraphicsAPIs.
