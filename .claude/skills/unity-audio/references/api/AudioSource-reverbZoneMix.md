<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource-reverbZoneMix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The amount by which the signal from the AudioSource will be mixed into the global reverb associated with the Reverb Zones.

The range from 0 to 1 is linear (like the volume property) while the range from 1 to 1.1 is an extra boost range that allows you to boost the reverberated signal by 10 dB. The associated curve in combination with the distance-based attenuation curve is useful when trying to simulate transitions from near-field to distant sounds.

Note that prior to Unity 5.0 reverb zones were not applied to 2D sounds. With the generalization of 2D and 3D sounds in Unity 5.0 through the Spatial Blend parameter the reverb can now be applied to any sound. Therefore when importing Unity projects made with versions prior to 5.0 this parameter will be set to 0 for all the sounds that were 2D sounds, but is now adjustable.
