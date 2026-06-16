<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource-spatialBlend.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets how much this AudioSource is affected by 3D spatialisation calculations (attenuation, doppler etc). 0.0 makes the sound full 2D, 1.0 makes it full 3D.

Aside from determining if this AudioSource is heard as a 2D or 3D source, this property is useful to morph between the two modes.

3D spatial calculations are applied after stereo panning is determined and can be used in conjunction with panStereo.

Morphing between the 2 modes is useful for sounds that should be progressively heard as normal 2D sounds the closer they are to the listener.
