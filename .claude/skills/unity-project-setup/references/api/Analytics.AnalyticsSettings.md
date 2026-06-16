<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Analytics.AnalyticsSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Editor API for the Unity Services editor feature. Normally Analytics is enabled from the Services window, but if writing your own editor extension, this API can be used.

### Static Properties

| Property | Description |
| --- | --- |
| configUrl | Set the Analytics config end point. |
| dashboardUrl | Get the Analytics dashboard endpoint. |
| deviceStatsEnabledInBuild | Reports whether device stats are enabled at runtime. |
| enabled | If set to true, this Boolean field enables the Analytics feature in Unity. It disables the feature if it is set to false. |
| eventUrl | Set the Analytics event end point. |
| initializeOnStartup | Controls whether Unity initializes Analytics immediately on startup. |
| testMode | Set to true for testing Analytics integration only within the Editor. |

### Events

| Event | Description |
| --- | --- |
| OnRequireInBuildHandler | Dispatches whenever a platform build starts. Use this event to enable Analytics in a platform build. |

### Delegates

| Delegate | Description |
| --- | --- |
| RequireInBuildDelegate | Defines the delegate signature to handle AnalyticsSettings.RequireInBuildDelegate events. |
