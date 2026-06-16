<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource-generator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The default IAudioGenerator to play next.

When you call AudioSource.Play, the AudioSource will instantiate a Generator from the IAudioGenerator.CreateRuntime function and render samples from it as the audio system mixes. The instantiated Generator instance will be assigned to AudioSource.generatorInstance for runtime scripting control while it is playing.
