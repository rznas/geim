<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorSettings-enableTextureStreamingInPlayMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable texture mipmap streaming system when in Play Mode.

Texture mipmap streaming only loads the texture mipmaps required by active cameras in the Scene. During Play mode, some mipmaps will be discarded from memory. This can slow down the process of switching back to Edit mode, as the high-resolution mipmaps are reloaded after Play mode is exited. Disabling the texture mipmap streaming system during Play mode speeds up the workflow for some Scenes. Alternatively enable texture streaming in Edit Mode as well as Play Mode.
