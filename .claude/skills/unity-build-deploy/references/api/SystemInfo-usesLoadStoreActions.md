<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-usesLoadStoreActions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

True if the Graphics API takes RenderBufferLoadAction and RenderBufferStoreAction into account, false if otherwise.

Use this property to check if RenderBufferLoadAction.DontCare or RenderBufferStoreAction.DontCare could result in actually discarding RT contents. For example, if you render with non-fullscreen ViewPort, you do not want to discard RT contents. Note that some Unity API can use RenderBufferLoadAction.Clear to clear a RenderTexture even if the Graphics API does not support RenderBufferLoadAction.Clear directly. In this case, Unity issues the normal Clear call.
