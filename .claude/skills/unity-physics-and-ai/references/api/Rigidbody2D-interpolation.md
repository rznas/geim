<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D-interpolation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Physics interpolation used between updates.

Interpolation is used to estimate the position of the Rigidbody between physics updates. It can be useful to switch this on when the graphics update is much more frequent than the physics update because the object can appear to move along in jerky "hops" rather than having smooth motion. With *interpolate* mode, motion is smoothed based on the object's positions in previous frames. *Extrapolate* mode smooths motion based on an estimate of its position in the next frame. The choice of mode depends of the dynamics of the object during gameplay.

Additional resources: Rigidbody.interpolation.
