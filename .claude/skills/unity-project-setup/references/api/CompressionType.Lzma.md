<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CompressionType.Lzma.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

LZMA compression results in smaller compressed Asset Bundles but they must be entirely decompressed before use.

This means that Asset Bundles compressed with this method are smaller than they would be with LZ4 or LZ4HC, but they are slower and require more memory to load individual Assets from.
