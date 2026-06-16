<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem.XRRenderParameter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A single viewpoint that must be rendered by the render pipeline. Contains a target viewport and texture array slice within a corresponding renderTarget.

### Properties

| Property | Description |
| --- | --- |
| isPreviousViewValid | Determines whether XRDisplaySubsystem.XRRenderParameter.previousView is valid for use in a frame. |
| occlusionMesh | Represents the area in screen-space that is not visible on the XR Display. |
| previousView | Previous frame view matrix for use in motion vector calculation. Use XRDisplaySubsystem.XRRenderParameter.isPreviousViewValid to determine if previous view is valid for use. When late latching is enabled, previous view is also adjusted for late latching. |
| projection | The projection matrix that the render pipeline should use to render to the renderTarget. |
| textureArraySlice | The slice of the output texture array that the render pipeline should render to. |
| view | World transform that the render pipeline should use to render to the renderTarget. |
| viewport | Selects the viewport of the output texture renderTarget. |
| visibleMesh | Represents the area in screen-space that is visible on the XR Display. |
