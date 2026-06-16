<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableCullingParameters-maximumVisibleLights.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This parameter controls how many visible lights are allowed.

Default is set to unlimited (-1).

 If this parameter has a value other than -1, Unity does not render lights in excess of that value.

 Unity avoids culling lights that contribute significantly to the lighting result. When there are more lights in the Scene than allowed by this parameter, Unity renders Directional lights first, then the lights closest to the camera, proceeding away from the camera until it reaches the light limit.
