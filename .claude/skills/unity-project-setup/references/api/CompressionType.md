<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CompressionType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Compression Method for Asset Bundles.

When building or recompressing Asset Bundles, these are the available compression methods. Some of these are only available for building and cannot be used for recompression.

 Additional resources: AssetBundles compression, AssetBundle.RecompressAssetBundleAsync, ArchiveHandle.Compression.

### Properties

| Property | Description |
| --- | --- |
| None | Uncompressed Asset Bundles are larger than compressed Asset Bundles, but they are the fastest to access once downloaded. |
| Lzma | LZMA compression results in smaller compressed Asset Bundles but they must be entirely decompressed before use. |
| Lz4 | LZ4 compression results in larger compressed files than LZMA, but does not require the entire bundle to be decompressed before use. |
| Lz4HC | LZ4HC is a high compression variant of LZ4. LZ4HC compression results in larger compressed files than LZMA, but does not require the entire bundle to be decompressed before use. |
