<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource-isVirtual.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

True if all sounds played by the AudioSource, such as main sound started by Play() or playOnAwake, and one-shots are culled by the audio system.

A sound is culled when its resulting volume is lower than the volumes of the N loudest voices, where N is the number of maximum audible sounds specified in the audio Project Settings or via AudioConfiguration.
