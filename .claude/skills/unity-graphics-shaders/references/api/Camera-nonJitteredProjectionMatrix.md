<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-nonJitteredProjectionMatrix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get or set the raw projection matrix with no camera offset (no jittering).

For many temporal image effects, the camera that is currently rendering needs to be slightly offset from the default projection (that is, the camera is ‘jittered’). Use this function to specify the default (non-jittered) perspective matrix that was used before the offset was applied. It is possible to configure whether the jittered or non jittered matrix should be used for objects rendered after the opaque objects pass (transparent objects for example), see Camera.useJitteredProjectionMatrixForTransparentRendering.

If you use motion vectors and camera jittering together, use this property to keep the motion vectors stable between frames.

Set the jittered matrix using Camera.projectionMatrix.
