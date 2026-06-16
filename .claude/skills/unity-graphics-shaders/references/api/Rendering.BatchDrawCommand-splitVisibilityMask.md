<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchDrawCommand-splitVisibilityMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates which splits that the draw command is visible in.

Unity uses this when it culls shadow map splits simultaneously. A split refers to a shadow cascade in a directional light shadow map or a cube map face in a point light shadow map.

 This is an 8-bit bitfield where a value of `1` indicates that Unity should render the draw command in the split, and a value of `0` indicates that Unity shouldn't render the draw command in the split. The least significant bit corresponds to the first culling split (array index 0) and each successive bit corresponds to the next culling split up until a maximum of six bits.
