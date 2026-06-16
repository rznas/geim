<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Light-shadowCustomResolution.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The custom resolution of the shadow map.

By default, shadow map resolution is computed from its importance on screen. Setting this property to a value greater than zero will override that behavior. Please note that the shadow map resolution will still be rounded to the nearest power of two and capped by memory and hardware limits. Note that this property is supported only in the Built-in Render Pipeline. It is not supported in the High Definition Render Pipeline (HDRP) or in the Universal Render Pipeline (URP).

Additional resources: shadows property, shadowResolution property, Shadow Mapping.
