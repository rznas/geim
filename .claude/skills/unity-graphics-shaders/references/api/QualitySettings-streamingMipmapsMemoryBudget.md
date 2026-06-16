<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings-streamingMipmapsMemoryBudget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The total amount of memory (in megabytes, or in bytes, depending on your platform) to be used by streaming and non-streaming textures.

Non-streaming textures will always be loaded at the largest mipmap level (even if that exceeds the budget). Streaming textures will pick the smallest mipmap level possible to try to hit the memory budget.
