<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporter-humanoidOversampling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls how much oversampling is used when importing humanoid animations for retargeting.

Humanoid retargeting implies resampling animations at import. By default, the sampling rate of the imported file is used. There are exceptional cases where a higher sampling rate is needed to ensure valid interpolation between original frames. Key reducing can be used on top of oversampling to reduce the size of the final produced clip. Key reducing will not remove keys where tighter interpolation is needed.
