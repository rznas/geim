<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.AdaptivePerformanceScaler.ApplyDefaultSetting.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| defaultSetting | The settings to apply to the scaler. |

### Description

Any scaler with settings in IAdaptivePerformanceSettings needs to call this method and provide the scaler specific setting. Unity uses the setting arguments in the base-scaler as the default settings. This is also used by Scaler Profiles to apply their Settings.
