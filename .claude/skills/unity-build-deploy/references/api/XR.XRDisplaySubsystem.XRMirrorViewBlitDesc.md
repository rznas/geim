<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystem.XRMirrorViewBlitDesc.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

All information in this struct describes the desired mirror view blit operation.

And XRMirrorViewBlitDesc can contain more than one XRBlitParams (describes exactly one blit operation). The render pipeline can query each child XRBlitParams via GetBlitParameter. XRMirrorViewBlitDesc is typically consumed by a scriptable rendering pipeline.

### Properties

| Property | Description |
| --- | --- |
| blitParamsCount | The number of XRBlitParams entries for this XRMirrorViewBlitDesc. |
| nativeBlitAvailable | When this is true, the current display subsystem supports native blit and AddGraphicsThreadMirrorViewBlit must be called to perform native blit. |
| nativeBlitInvalidStates | When this is true, display subsystem will modifiy the graphics state. |

### Public Methods

| Method | Description |
| --- | --- |
| GetBlitParameter | Gets an XRBlitParams for a specific XRMirrorViewBlitDesc. |
