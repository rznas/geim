<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RenderPipelineAsset-prefixedRenderingLayerMaskNames.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string[]** Returns the mask names defined in renderingLayerMaskNames, but with each name prefixed by its index in the array, a colon, and a space. For example, if the element with an index of 2 has the name "Example Name", its value in this array is "2: Example Name".

### Description

Returns the names of the Rendering Layer Masks for this pipeline, with each name prefixed by a unique numerical ID.

This property is useful for creating custom Editor UI for a render pipeline. If the array of Rendering Layer Mask names contains duplicate names, this property lets you distinguish them by their prefix.
