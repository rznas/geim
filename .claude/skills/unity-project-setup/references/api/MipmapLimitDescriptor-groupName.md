<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MipmapLimitDescriptor-groupName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The TextureMipmapLimitGroup to use the mipmap limit of.

The texture uses the mipmap limit of `groupName` if you set MipmapLimitDescriptor.useMipmapLimit to `true`. If no group is provided (either `String.Empty()` or `null`), the texture will use the global mipmap limit.

If a group is provided but it has not been defined in the Unity Project (set up in the Project's Quality Settings, or managed via TextureMipmapLimitGroups), the texture also falls back to following the global mipmap limit.
