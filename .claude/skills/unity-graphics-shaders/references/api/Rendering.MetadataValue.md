<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.MetadataValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains a single metadata value for a batch.

A metadata value is a uint32 value tied to a DOTS-instanced property. Unity passes this metadata to the shader.

### Properties

| Property | Description |
| --- | --- |
| NameID | The name ID of the property that the metadata value is tied to. To specify a value for a property declared with UNITY_DOTS_INSTANCED_PROP(float4, Example), pass Shader.PropertyToID("Example") here. |
| Value | Unity passes this uint32 value to the shader for this property. The value is shared between all instances in the batch.Usage example: provide a buffer address for the property. |
