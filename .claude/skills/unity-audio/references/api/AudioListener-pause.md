<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioListener-pause.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The paused state of the audio system.

If set to true, all AudioSources playing will be paused. This works in the same way as pausing the game in the editor. While the pause-state is true, the AudioSettings.dspTime will be frozen and further AudioSource play requests will start off paused. If you want certain sounds to still play during the pause, you need to set the ignoreListenerPause property on the AudioSource to true for these. This is typically menu item sounds or background music for the menu. Any scheduled play requests will be frozen in time, so that if you scheduled a sound to play after 3 seconds and paused the audio system 1 second after this, the scheduled sounds will start playing 2 seconds after unpausing.
