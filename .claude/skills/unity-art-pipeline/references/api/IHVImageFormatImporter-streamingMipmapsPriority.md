<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IHVImageFormatImporter-streamingMipmapsPriority.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Relative priority for this texture when reducing memory size in order to hit the memory budget.

When mipmap streaming is enabled, Unity will automatically reduce the size of textures until they fit into the texture streaming memory limits. The priority value can be thought of as a mipmap offset for the memory budget code. For example, with a priority of 2, Unity will attempt to use a mipmap two times larger than textures with a priority of 0. Negative values are also valid.
