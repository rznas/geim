<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildCompression.LZ4Runtime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

LZ4 Compression for runtime recompression.

LZ4 compression results in larger compressed file sizes than LZ4HC and LZMA, but does not require the entire bundle to be decompressed before use. LZ4 is a “chunk-based” algorithm, and therefore when objects are loaded from an LZ4-compressed bundle, only the corresponding chunks for that object are decompressed. This occurs on-the-fly, meaning there are no wait times for the entire bundle to be decompressed before use. The LZ4 Format was introduced in Unity 5.3 and was unavailable in prior versions.

This BuildCompression is only supported for recompressing Asset Bundles at runtime and is not available for building Asset Bundles. Use LZ4 for building Asset Bundles.
