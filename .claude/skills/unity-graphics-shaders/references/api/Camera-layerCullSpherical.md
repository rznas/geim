<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-layerCullSpherical.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

How to perform per-layer culling for a Camera.

Normally this type of culling is performed by moving the Camera's far plane closer to the eye. By setting this value to true, the culling is instead based on spherical distance. The benefit is that rotating on the same spot does not affect which objects are visible.

This API is only available with the Built-in renderer.

Additional resources: layerCullDistances.
