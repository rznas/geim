<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ShadowCastingMode.TwoSided.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Shadows are cast from this object, treating it as two-sided.

Shadow rendering will turn off backface culling, even if object's shader has backface culling on. This means that single-sided objects (like a Plane or a Quad) will cast shadows, even if the light is behind them.

Additional resources: Renderer.shadowCastingMode.
