<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSettings.Mobile-stopAudioOutputOnMute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set this property to true to make audio output thread automatically stop when device media volume is set to 0 and to start it again when volume is not 0.

Default value is false.

**Note**: Setting this property to true when device media volume is 0 stops audio output thread. Setting it to false when audio output thread is stopped starts this thread.
