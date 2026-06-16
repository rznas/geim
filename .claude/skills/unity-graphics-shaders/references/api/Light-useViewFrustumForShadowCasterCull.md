<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Light-useViewFrustumForShadowCasterCull.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether to cull shadows for this Light when the Light is outside of the view frustum.

Set this to true to calculate shadows for the Light only when it is within the view frustum, and cull shadows for this Light when it is outside the view frustum. This is the default behavior.

Set this to false to calculate shadows for this Light, regardless of whether it is within the view frustum or not. This is useful if you are caching shadow maps; you can calculate shadows for a number of Lights that are not visible within the same view frustum, and continue to use the shadow map as the view changes.

When you set this to false, Unity performs the same culling calculations as before but with an effectively infinite view frustum.
