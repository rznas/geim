<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls the global audio settings from script.

Setup speaker output and format.

### Static Properties

| Property | Description |
| --- | --- |
| audioSpatialExperience | Determines if the Unity app's final mixed audio stream is spatialized. |
| driverCapabilities | Returns the speaker mode capability of the current audio driver. (Read Only) |
| dspTime | Returns the current time of the audio system. |
| outputSampleRate | Get the mixer's current output rate. |
| speakerMode | AudioSettings.speakerMode is deprecated. Use AudioSettings.GetConfiguration and AudioSettings.Reset to adjust audio settings instead. |

### Static Methods

| Method | Description |
| --- | --- |
| GetConfiguration | Returns the current configuration of the audio device and system. The values in the struct may then be modified and reapplied via AudioSettings.Reset. |
| GetDSPBufferSize | Get the mixer's buffer size in samples. |
| GetSpatializerPluginName | Returns the name of the spatializer selected on the currently-running platform. |
| GetSpatializerPluginNames | Returns an array with the names of all the available spatializer plugins. |
| Reset | Changes the device configuration and invokes the AudioSettings.OnAudioConfigurationChanged delegate with the argument deviceWasChanged=false. There's no guarantee that the exact settings specified are used, but Unity automatically uses the closest match that it supports. Note: This can cause main thread stalls if AudioSettings.Reset is called when objects are loading asynchronously. |
| SetSpatializerPluginName | Sets the spatializer plugin for all platform groups. If a null or empty string is passed in, the existing spatializer plugin will be cleared. |

### Events

| Event | Description |
| --- | --- |
| OnAudioConfigurationChanged | Unity calls this event whenever the global audio settings change. |

### Delegates

| Delegate | Description |
| --- | --- |
| AudioConfigurationChangeHandler | A delegate called whenever the global audio settings are changed, either by AudioSettings.Reset or by an external device change such as the OS control panel changing the sample rate or because the default output device was changed, for example when plugging in an HDMI monitor or a USB headset. |
