<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightmapData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Data of a lightmap.

A Scene can have several lightmaps stored in it, and Renderer components can use those lightmaps. This makes it possible to use the same material on multiple objects, while each object can refer to a different lightmap or different portion of the same lightmap.

You must set the following properties or Unity might render objects incorrectly:

- `lightmapDir` if you use LightmapsMode.CombinedDirectional.
- `shadowMask` if you use MixedLightingMode.Shadowmask.

Additional resources: LightmapSettings class, Renderer.lightmapIndex

### Properties

| Property | Description |
| --- | --- |
| lightmapColor | Lightmap storing color of incoming light. |
| lightmapDir | Lightmap storing dominant direction of incoming light. |
| shadowMask | Texture storing occlusion mask per light (ShadowMask, up to four lights). |
