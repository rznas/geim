<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightProbeProxyVolume.BoundingBoxMode.AutomaticLocal.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The bounding box encloses the current Renderer and all the relevant Renderers down the hierarchy, in local space.

Only Renderers that have the **Light Probes** property set to **Use Proxy Volume** are taken into account. The interpolated Light Probe positions are generated in the local-space of the Renderer inside the resulting bounding box. If a Renderer component isn’t attached to the GameObject, a default bounding box is generated.
