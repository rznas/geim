<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioClip-preloadAudioData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable this property in the Inspector to preload audio data from the audio clip when loading the clip Asset (Read Only).

This can help prevent delays when you play an audio clip because the data is already loaded. If you disable this property, you need to call AudioClip.LoadAudioData to load the data before you play the clip. Properties like length, channels, and format are available before Unity loads the audio data. You can’t change this property during runtime. To change this setting before you enter Play mode, set **Preload Audio Data** in the Inspector of the audio clip or use AudioImporterSampleSettings.preloadAudioData.
