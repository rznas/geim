<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.IAdaptivePerformanceSettings.LoadScalerProfile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| scalerProfileName | Supply the name of the scaler. You can query a list of available scaler profiles via IAdaptivePerformanceSettings.GetAvailableScalerProfiles. |

### Description

Load a scaler profile from the settings. Unity update the values of all scalers in the profile to new ones. This is a heavy operation using reflection and should not be used per frame and only in load operations as it causes hitching and possible screen artifacts depending on which scalers are used in a scene.
