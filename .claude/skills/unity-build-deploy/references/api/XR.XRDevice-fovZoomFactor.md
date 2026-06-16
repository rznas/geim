<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDevice-fovZoomFactor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Zooms the XR projection.

Set this to zoom the XR projection matrix by scaling the viewing frustum. The value is clamped so that it will never fall below 1.0f. For asymmetric XR projections, setting the FoV doesn't make sense, so use this property to scale the frustum half angles uniformly by a single value.

For example: A symmetric frustum starting with an FoV of 90 degrees, an fovZoomFactor of 2 will scale the viewing frustum so that it has an FoV of 45 degrees.
