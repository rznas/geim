<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.SortingCriteria.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

How to sort objects during rendering.

Control the way Unity sorts objects before drawing them by using and combining these flags.

The basic flags are:

- SortingLayer,
- RenderQueue,
- BackToFront,
- QuantizedFrontToBack,
- OptimizeStateChanges,
- CanvasOrder.

Multiple flags, when combined, are applied in the above order.

Some commonly-used sorting combinations are provided for convenience. Use CommonOpaque for opaque objects. This combination of flags includes optimization for reducing draw state changes and draws roughly front-to-back to reduce drawing over the same pixels many times. Use CommonTransparent for transparent objects, which need to be sorted from back to front before being drawn for them all to be visible.

Additional resources: DrawingSettings.sorting, ScriptableRenderContext.DrawRenderers.

### Properties

| Property | Description |
| --- | --- |
| None | Do not sort objects. |
| SortingLayer | Sort by renderer sorting layer. |
| RenderQueue | Sort by material render queue. |
| BackToFront | Sort objects back to front. |
| QuantizedFrontToBack | Sort objects in rough front-to-back buckets. |
| OptimizeStateChanges | Sort objects to reduce draw state changes. |
| CanvasOrder | Sort renderers taking canvas order into account. |
| RendererPriority | Sorts objects by renderer priority. |
| CommonOpaque | Typical sorting for opaque objects. |
| CommonTransparent | Typical sorting for transparencies. |
