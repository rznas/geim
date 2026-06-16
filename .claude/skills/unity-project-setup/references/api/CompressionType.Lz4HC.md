<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CompressionType.Lz4HC.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

LZ4HC is a high compression variant of LZ4. LZ4HC compression results in larger compressed files than LZMA, but does not require the entire bundle to be decompressed before use.

LZ4HC compression makes it possible to load individual Assets from an Asset Bundle quickly and using less memory than LZMA compressed Asset Bundles. This compression method is not available for recompression at runtime, but LZ4 is.
