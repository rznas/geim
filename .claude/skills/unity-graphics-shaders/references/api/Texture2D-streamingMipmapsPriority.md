<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D-streamingMipmapsPriority.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the relative priority for this Texture when reducing memory size to fit within the memory budget.

When mipmap streaming is enabled, Unity automatically reduces the size of Textures until they fit into the Texture streaming memory budget. This number is roughly a mipmap offset for the memory budget code. For example, with a priority of 2, Unity tries to use a mipmap two times larger than other Textures with a priority of 0. Negative values are also valid.
