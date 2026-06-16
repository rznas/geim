<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSettings.Mobile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This class encapsulates properties and methods to handle audio output thread on iOS/Android.

You may be able to reduce the power consumption of your app or game by using this class. In general, for apps with simple looped music and short sound effects, you should set AudioSettings.Mobile.stopAudioOutputOnMute to true, and also call AudioSettings.Mobile.StopAudioOutput if the user of your app sets music/sound volume to 0 in game settings. This helps to reduce power consumption on most mobile devices. Also you can check AudioSettings.Mobile.muteState property and listen to AudioSettings.Mobile.OnMuteStateChanged event to stop/start audio output thread when required.

However, if your game or app has more complex sound or music logic, doing this could cause synchronization issues. In particular, any sounds playing when output is stopped are resumed from the same position when output is restarted, and so may be out of sync with any gameplay code that continued to run during that time. Therefore this setting may not be suitable if you are relying on gameplay elements that should be synchronized with parts of audio that may be continuing to play during output being switched off or on.

### Static Properties

| Property | Description |
| --- | --- |
| audioOutputStarted | Returns true if audio output thread is working. |
| muteState | Returns true if current device media volume is 0. |
| stopAudioOutputOnMute | Set this property to true to make audio output thread automatically stop when device media volume is set to 0 and to start it again when volume is not 0. |

### Static Methods

| Method | Description |
| --- | --- |
| StartAudioOutput | Starts audio output thread on Android/iOS. |
| StopAudioOutput | Stops audio thread on Android/iOS. |

### Events

| Event | Description |
| --- | --- |
| OnMuteStateChanged | A delegate called whenever the device mute state is changed. |
