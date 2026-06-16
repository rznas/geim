<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.OnDemandRendering.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use the OnDemandRendering class to control and query information about your application's rendering speed independent from all other subsystems (such as physics, input, or animation).

If you use this with Optimized Frame Pacing on Android, and if you're also using OpenGL ES, Optimized Frame Pacing is most effective when the frame rate is either 20, 30, or 60 frames per second. To make sure that you render at one of these frame rates, use OnDemandRendering.effectiveRenderframerate.
 
 Vulkan is less strict and allows a greater number of valid frame rates.
 
 If you request an incompatible frame rate, the application renders at the highest frame rate possible. However, if the renderFrameInterval is too high, the application might become unresponsive because the time between rendered frames also becomes too high.
 
 Note about event execution:
 The diagram on the Manual page Order of execution for event functions describes the execution order for events in each frame. However, render-specific events, including those for Scene rendering, Gizmo rendering, GUI rendering, and End of frame sections, don't occur during frames that Unity doesn't render (when OnDemandRendering.willCurrentFrameRender is false).

### Static Properties

| Property | Description |
| --- | --- |
| effectiveRenderFrameRate | The current estimated rate of rendering in frames per second rounded to the nearest integer. |
| renderFrameInterval | Get or set the current frame rate interval. To restore rendering back to the value of Application.targetFrameRate or QualitySettings.vSyncCount set this to 0 or 1. |
| willCurrentFrameRender | True if the current frame will be rendered. |
