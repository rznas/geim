<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ShadowCastingMode.On.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Shadows are cast from this object.

Shadow rendering will use the same culling mode as specified in the object's shader. Typically this means that single-sided objects (like a Plane or a Quad) do not cast shadows if the light is behind them. Use ShadowCastingMode.TwoSided to treat objects as two-sided for shadow rendering.

Additional resources: Renderer.shadowCastingMode.
