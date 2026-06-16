<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.EditorCameraUtils.RenderToCubemap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| camera | The Camera to use during rendering. |
| target | The cubemap to render to. |
| faceMask | A bitmask which determines which of the six faces to render to. |
| culledFlags | The flags of objects to cull during rendering. |

### Returns

**bool** If the render process succeeds, returns `true`. Otherwise, returns `false`.

### Description

Renders this Camera into a static cubemap.

This function is mostly useful in the editor for "baking" static cubemaps of your Scene.

This functions uses the Camera's Clear Flags, its Transform’s Position, and its Clipping Plane distances to render sections of the Scene into each cubemap face. `faceMask` is a bitfield indicating which cubemap faces to render into. Each set bit corresponds to a face. Bit numbers are integer values of CubemapFace enum type. By default, this process renders to all six cubemap faces (the default value of 63 means the lowest six bits are set. /00111111/). This function returns `false` if rendering to the cubemap fails. An example of how this could happen is that some graphics hardware does not support this functionality. Note: ReflectionProbes are a more advanced method of performing real-time reflections. Note: You can create cubemaps in the Editor by navigating to **Assets >Create>Legacy** and selecting **Cubemap** option.

Additional resources: Cubemap assets, Reflective shaders.
