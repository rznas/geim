<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LightProbeUsage.UseProxyVolume.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Uses a 3D grid of interpolated light probes.

A **Light Probe Proxy Volume** component which may reside on the same game object or on another game object will be required. In order to use a **Light Probe Proxy Volume** component which resides on another game object, you must use the **Proxy Volume Override** property where you can specify the source game object.

Surface shaders use the information associated with the proxy volume automatically. To use the proxy volume information in your custom shaders, you can use ShadeSHPerPixel function in your pixel shader.

Additional resources: Light Probes, Light Probe Proxy Volume.
