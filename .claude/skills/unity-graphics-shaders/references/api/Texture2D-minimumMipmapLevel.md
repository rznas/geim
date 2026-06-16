<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D-minimumMipmapLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Restricts the mipmap streaming system to a minimum mip level for this Texture.

When this field is not set, the mipmap streaming system selects which mipmap to load based on the position of all Cameras. Setting this field limits the loaded mipmap level and Unity only uses the calculated mipmap streaming system value when it is larger than the minimum level selected. The mipmap level can still be modified by budgeting memory. Use the streamingMipmapsPriority property to increase the chance of a particular Texture mipmap level being selected by the mipmap streaming system.

Additional resources: ClearMinimumMipmapLevel, requestedMipmapLevel.
