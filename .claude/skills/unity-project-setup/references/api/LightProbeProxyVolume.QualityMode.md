<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightProbeProxyVolume.QualityMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An enum describing the Quality option used by the Light Probe Proxy Volume component.

Additional resources: Light Probes, Light Probe Proxy Volume, Spherical Harmonics(SH).

### Properties

| Property | Description |
| --- | --- |
| Low | This option will use only two SH coefficients bands: L0 and L1. The coefficients are sampled from the Light Probe Proxy Volume 3D Texture. Using this option might increase the draw call batch sizes by not having to change the L2 coefficients per Renderer. |
| Normal | This option will use L0 and L1 SH coefficients from the Light Probe Proxy Volume 3D Texture. The L2 coefficients are constant per Renderer. By having to provide the L2 coefficients, draw call batches might be broken. |
