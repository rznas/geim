<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.AudioMixer-updateMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

How time should progress for this AudioMixer. Used during Snapshot transitions.

During update of AudioMixers and Snapshot transitions, this property defines how those transitions should progress.

- AudioMixerUpdateMode.Normal updates the AudioMixer with scaled game time progression.
- AudioMixerUpdateMode.UnscaledTime ignores Time.timeScale changes and updates the AudioMixer in realtime.
