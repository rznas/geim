<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRSettings-useOcclusionMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies whether or not the occlusion mesh should be used when rendering. Enabled by default.

The occlusion mesh prevents GPU work from happening on portions of the eye texture that won't be visible in the HMD. Disabling this will lead to a decrease in GPU rendering performance. However, this may be needed to deal with certain features such as the grab pass.
