<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderPickingArgs.NeedToRenderForPicking.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| go | The GameObject to test. |

### Returns

**bool** True if the GameObject should be rendered.

### Description

Checks whether a GameObject should be rendered in the current render picking callback.

`RenderPickingArgs.NeedToRenderForPicking` is similar to RenderObjectSetContains. This method checks whether a GameObject should be rendered or not.

If the current renderPickingType is RenderPickingType.RenderFromIgnoreSet, this method returns true if the given `go` is not contained in the ignore set. Otherwise, this method returns true if the given `go` is contained in the filter set.

Notice that for the RenderPickingType.RenderFromIgnoreSet type, this method returns true for all GameObjects if it is not contained in the ignore set. However, you are only required to handle the rendering of the custom geometries your callback is set to render.
