<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource-maxDistance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The distance where sound either becomes inaudible or stops attenuation, depending on the rolloff mode.

AudioRolloffMode.Linear: For the linear rolloff mode, the `maxDistance` is the point where the volume reaches zero and the sound becomes inaudible. 

AudioRolloffMode.Custom: For the custom rolloff mode, the `maxDistance` sets the distance bounds of the curve. Any distance beyond holds the last available value.

AudioRolloffMode.Logarithmic: For the logarithmic rolloff mode, the audio source ignores this setting. The sound will continue to attenuate with distance indefinitely.
