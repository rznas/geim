<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MipmapLimitDescriptor-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| useMipmapLimit | Enable or disable mipmap limit effects for a Texture. |
| groupName | The TextureMipmapLimitGroup to use the mipmap limit of. |

### Description

Creates a new MipmapLimitDescriptor.

Use a `MipmapLimitDescriptor` to determine whether a texture uses a mipmap limit when you create the texture using a constructor. If you create a texture using a script, the texture doesn't use mipmap limits by default. The texture uses the mipmap limit of `groupName` if you set `useMipmapLimit` to `true`. If the group is not defined (either `null` or an empty string), the texture falls back to following the global mipmap limit.

The texture also uses the global mipmap limit if the group is not known by the Editor.

Additional resources:: TextureMipmapLimitGroups.
