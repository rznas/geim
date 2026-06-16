<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D-requestedMipmapLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The mipmap level to load.

By default, the mipmap streaming system selects which mipmap to load based on the position of all Cameras. Setting this field forces a specific mipmap to be loaded and overrides the mipmap streaming system. The mipmap level can still be modified by budgeting memory. Use the streamingMipmapsPriority property to increase the chance of a particular Texture mipmap level being selected by the mipmap streaming system. The requested level is unaffected by minimumMipmapLevel

 The value of `requestedMipmapLevel` is an exact mipmap level that ranges from 0 to the maximum mipmap level of the specific texture, or the **Max Level Reduction** value if that's lower. 0 is the highest resolution mipmap level.

Additional resources: ClearRequestedMipmapLevel, minimumMipmapLevel.
