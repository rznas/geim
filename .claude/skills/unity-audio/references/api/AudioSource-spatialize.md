<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource-spatialize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables or disables spatialization.

Custom spatializer effects improve the realism of sound propagation by incorporating the binaural head-related transfer function (HRTF) such that the listener can better sense the directionality of the sound through the filtering of the head and the micro-delays between the ears. Unity supports custom spatialization effects as optional plugins through the native audio plugin system, and in case such plugins are present, will show a "Spatialize" checkbox on the AudioSource that corresponds to this property. If no plugin is present (and selected in the project audio settings), attempts to set this property to true will fail with a warning.
