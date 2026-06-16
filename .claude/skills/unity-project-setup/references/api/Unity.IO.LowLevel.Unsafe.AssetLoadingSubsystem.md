<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AssetLoadingSubsystem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Subsystem tags for the read request, describing broad asset type or subsystem that triggered the read request.

### Properties

| Property | Description |
| --- | --- |
| Other | The subsystem where the read request originated is unknown. |
| Texture | The read request originated in texture loading. |
| VirtualTexture | The read request originated in Virtual Texturing. |
| Mesh | The read request originated in mesh loading. |
| Audio | The read request originated from an audio subsystem. |
| Scripts | The read request originated in scripts. |
| EntitiesScene | The read request originated in a Unity.Entities scene loading subsystem. |
| EntitiesStreamBinaryReader | The read request originated in a Unity.Entities.Serialization binary reader subsystem. |
| FileInfo | A request for file information. |
| ContentLoading | The read request originated in a Unity.Loading Content Loading subsystem. |
