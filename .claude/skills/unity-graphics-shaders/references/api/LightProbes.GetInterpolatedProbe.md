<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightProbes.GetInterpolatedProbe.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns an interpolated probe for the given position for both real-time and baked light probes combined.

Renderer is only needed to speed up the search for the current tetrahedron, as it caches the index of the tetrahedron it was in the last frame.
