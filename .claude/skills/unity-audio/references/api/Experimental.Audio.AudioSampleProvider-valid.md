<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Audio.AudioSampleProvider-valid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

True if the object is valid.

The object becomes invalid when its owner (see AudioSampleProvider.owner releases it. However, the provider cannot be destroyed while a call is ongoing so there will be no race condition during destruction.

A VideoPlayer releases all its providers when playback is stopped.
