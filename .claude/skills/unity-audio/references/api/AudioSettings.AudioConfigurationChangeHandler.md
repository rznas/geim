<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSettings.AudioConfigurationChangeHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| deviceWasChanged | True if the change was caused by an device change. |

### Description

A delegate called whenever the global audio settings are changed, either by AudioSettings.Reset or by an external device change such as the OS control panel changing the sample rate or because the default output device was changed, for example when plugging in an HDMI monitor or a USB headset.

See AudioSettings.Reset for an example.
