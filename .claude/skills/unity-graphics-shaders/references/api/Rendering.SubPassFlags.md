<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.SubPassFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Flags to indicate specialized native subpass behaviour.

### Properties

| Property | Description |
| --- | --- |
| None | Default flags. |
| ReadOnlyDepth | The depth attachment is read-only in this sub pass. Some renderers require this in order to be able to use the depth attachment as input. |
| ReadOnlyStencil | Both depth and stencil attachments are read-only in this sub pass. Some renderers require this in order to be able to use the depth and stencil attachments as inputs. |
| ReadOnlyDepthStencil | The stencil attachment is read-only in this sub pass. Some renderers require this in order to be able to use the stencil attachment as input. |
| UseShadingRateImage | This sub pass has a shading rate image attachment. |
| TileProperties | Frame buffer tile properties of this sub pass could potentially be used for performance gains on some platforms. |
| MultiviewRenderRegionsCompatible | This sub pass is compatible with Multiview Render Regions. |
