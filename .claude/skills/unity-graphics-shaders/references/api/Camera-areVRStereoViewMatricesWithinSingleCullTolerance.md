<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-areVRStereoViewMatricesWithinSingleCullTolerance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines whether the stereo view matrices are suitable to allow for a single pass cull.

If the stereo view matrices are set manually by calling Camera.SetStereoViewMatrix, then the Camera will use this check to determine whether the matrices are similar enough to enable single pass culling, which is more performant. The matrices need to point in the same direction as the center eye and be within eye distance apart.

 If this check fails, then
 • The camera performs a separate cull for each eye.
 • Shadows cannot be shared between the eyes.
 • Single-pass rendering cannot be used.

 Additional resources: Camera.SetStereoViewMatrix
