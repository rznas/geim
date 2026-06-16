<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialGlobalIlluminationFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

How the material interacts with lightmaps and lightprobes.

Additional resources: Material.globalIlluminationFlags.

### Properties

| Property | Description |
| --- | --- |
| None | The emissive lighting does not affect Global Illumination at all. |
| RealtimeEmissive | The emissive lighting will affect Enlighten Realtime Global Illumination. It emits lighting into real-time lightmaps and real-time Light Probes. |
| BakedEmissive | The emissive lighting affects baked Global Illumination. It emits lighting into baked lightmaps and baked lightprobes. |
| EmissiveIsBlack | The emissive lighting is guaranteed to be black. This lets the lightmapping system know that it doesn't have to extract emissive lighting information from the material and can simply assume it is completely black. |
| AnyEmissive | Helper Mask to be used to query the enum only based on whether Enlighten Realtime Global Illumination or baked GI is set, ignoring all other bits. |
