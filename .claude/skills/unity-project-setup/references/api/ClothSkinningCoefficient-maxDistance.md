<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ClothSkinningCoefficient-maxDistance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Distance a vertex is allowed to travel from the skinned mesh vertex position.

The Cloth component makes sure that the cloth vertices stay within maxDistance from the skinned mesh vertex positions. If maxDistance is zero, the vertex is not simulated but set to the skinned mesh vertex position. This behavior is useful for attaching the cloth vertex to the skin of an animated character. Default: 0.2 Range: [0, inf).
