<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildCompression.LZ4.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

LZ4HC "Chunk Based" Compression.

LZ4HC (LZ4 High Compression) compression results in smaller compressed file sizes than LZ4 and larger compressed file sizes than LZMA, but does not require the entire bundle to be decompressed before use like LZMA. LZ4(HC) is a “chunk-based” algorithm, and therefore when objects are loaded from an LZ4(HC)-compressed bundle, only the corresponding chunks for that object are decompressed. This occurs on-the-fly, meaning there are no wait times for the entire bundle to be decompressed before use. The LZ4 Format was introduced in Unity 5.3 and was unavailable in prior versions.

This BuildCompression is only supported for building Asset Bundles and is not available for recompression at runtime. Use LZ4Runtime for runtime recompression.
