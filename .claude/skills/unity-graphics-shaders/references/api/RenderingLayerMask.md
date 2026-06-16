<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderingLayerMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Render Pipeline allows you to use Rendering Layers, which are LayerMasks to make Lights or effects only affect specific Renderers.

Rendering Layers are also supported on decal projectors, and can be sampled from the ShaderGraph to implement custom effects.

 Rendering Layers are a Bitmask and it represents the 32 Layers and define them as `true` or `false`. Each bitmask describes whether the `RenderingLayer` is used. As an example, bit 5 can be set to 1 (`true`).

 `Edit->Settings->Tags and Layers` option shows the use of the 32 bitmasks. Each `RenderingLayer` is shown with a string setting. As an example `Layer 0` is set as `Default`. There is always at least one defined RenderingLayer.

### Static Properties

| Property | Description |
| --- | --- |
| defaultRenderingLayerMask | Returns an instance of Default Rendering Layer Mask. |

### Properties

| Property | Description |
| --- | --- |
| value | Converts a layer mask value to an integer value. |

### Static Methods

| Method | Description |
| --- | --- |
| GetDefinedRenderingLayerCount | Returns a number of Rendering Layers defined in the Tags and Layers manager. |
| GetDefinedRenderingLayerNames | Returns a names of the defined Rendering Layers in the Tags and Layers manager. |
| GetDefinedRenderingLayersCombinedMaskValue | Returns value that represents all defined Rendering Layers in the Tags and Layers manager. |
| GetDefinedRenderingLayerValues | Returns a values of the defined Rendering Layers in the Tags and Layers manager. |
| GetLastDefinedRenderingLayerIndex | Returns an index of the last defined Rendering Layer in the Tags and Layers manager. |
| GetMask | Given a set of rendering layer names as defined in the Tags and Layers manager, returns the equivalent rendering layer mask for all of them. |
| GetRenderingLayerCount | Returns a number of Rendering Layers defined in the Tags and Layers manager including empty ones. |
| NameToRenderingLayer | Given a rendering layer name, returns the rendering layer index as defined in the Tags and Layers manager. |
| RenderingLayerToName | Given a rendering layer index, returns the name of the layer as defined in the Tags and Layers manager. |

### Operators

| Operator | Description |
| --- | --- |
| RenderingLayerMask | Implicitly converts uint to a RenderingLayerMask. |
