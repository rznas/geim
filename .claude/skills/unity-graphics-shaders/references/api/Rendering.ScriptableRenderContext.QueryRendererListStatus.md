<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.QueryRendererListStatus.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rendererList | The RendererList to query. |

### Returns

**RendererListStatus** Returns the status of the RendererList.

### Description

Queries the status of a RendererList.

You can use this command to expose information about the visible GameObjects before recording any rendering commands in a command buffer. For example, by querying the status of a RendererList that includes only transparent GameObjects, the application can know if any transparent GameObjects are visible in the current view and, if not, skip the setup of any rendering passes required to draw them.

Before querying a RendererList for its status, the application should first call ScriptableRenderContext.PrepareRendererListsAsync.
