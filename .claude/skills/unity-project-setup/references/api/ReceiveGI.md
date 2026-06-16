<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ReceiveGI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This property only takes effect if you enable a global illumination setting such as Baked Global Illumination or Enlighten Realtime Global Illumination for the target Scene. When you enable ReceiveGI, you can determine whether illumination data at runtime will come from Light Probes or Lightmaps. When you set ReceiveGI to Lightmaps, the Mesh Renderer receives global illumination from lightmaps. That means the Renderer is included in lightmap atlases, possibly increasing their size, memory consumption and storage costs. Calculating global illumination values for texels in this Renderer also adds to bake times. When you set ReceiveGI to Light Probes, the Mesh Renderer is not assigned space in lightmap atlases. Instead it receives global illumination stored by Light Probes in the target Scene. This can reduce bake times by avoiding the memory consumption and storage cost associated with lightmaps. ReceiveGI is only editable if you enable StaticEditorFlags.ContributeGI for the GameObject associated with the target Mesh Renderer. Otherwise this property defaults to the Light Probes setting.

### Properties

| Property | Description |
| --- | --- |
| Lightmaps | Makes the GameObject use lightmaps to receive Global Illumination. |
| LightProbes | The object will have the option to use Light Probes to receive Global Illumination. See LightProbeUsage. |
