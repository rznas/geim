<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildCompression.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains information about compression methods, compression levels and block sizes that are supported by Asset Bundle compression at build time and recompression at runtime.

The formats that are currently supported are exposed with static properties. There are three supported BuildCompression types for compressing AssetBundles during builds (LZ4, LZMA and Uncompressed) and two supported recompression methods for runtime (LZ4Runtime and UncompressedRuntime).

 Additional resources: AssetBundle.RecompressAssetBundleAsync, AssetBundles compression, BuildAssetBundleOptions.ChunkBasedCompression, BuildAssetBundleOptions.UncompressedAssetBundle, BuildOptions.CompressWithLz4, CompressionType, Caching.

### Static Properties

| Property | Description |
| --- | --- |
| LZ4 | LZ4HC "Chunk Based" Compression. |
| LZ4Runtime | LZ4 Compression for runtime recompression. |
| LZMA | LZMA Compression. |
| Uncompressed | Uncompressed Asset Bundle. |
| UncompressedRuntime | Uncompressed Asset Bundle. |
