<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.GetGraphicsAPIs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| platform | Platform to get APIs for. |

### Returns

**GraphicsDeviceType[]** Array of graphics APIs.

### Description

Get graphics APIs to be used on a build platform.

By default each platform is using "automatic" graphics API detection and picks the best available one (see GetUseDefaultGraphicsAPIs). However it is possible to change that to explicitly limit the graphics APIs used via SetGraphicsAPIs.

Additional resources: SetGraphicsAPIs, SetUseDefaultGraphicsAPIs, GetUseDefaultGraphicsAPIs.
