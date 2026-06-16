<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cubemap-requestedMipmapLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The mipmap level to load.

Normally, the mipmap streaming system selects which mipmap to load based on the position of all Cameras. Setting this field forces a specific mipmap to be loaded and overrides the mipmap streaming system. The mipmap level can still be modified by budgeting memory. Use the streamingMipmapsPriority property to increase the chance of a particular Texture mipmap level being selected by the mipmap streaming system.

Additional resources: ClearRequestedMipmapLevel.
