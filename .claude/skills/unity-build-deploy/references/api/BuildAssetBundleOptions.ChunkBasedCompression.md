<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildAssetBundleOptions.ChunkBasedCompression.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use chunk-based LZ4 compression when creating the AssetBundle.

When chunk-based compression is used, the content of the AssetBundle is broken into individual segments, which are compressed independently using the CompressionType.Lz4HC algorithm. The resulting file is typically larger than full file CompressionType.Lzma compression which is used by default, but AssetBundles built with this format can be loaded incrementally, e.g. by only decompressing the needed chunks. This is the default format used for AssetBundles stored in the AssetBundle Cache and provides a good balance between compression ratio and load performance.

Related topics: AssetBundles compression, BuildCompression, CompressionType, ArchiveHandle.Compression, Caching, BuildAssetBundleOptions.UncompressedAssetBundle, BuildOptions.CompressWithLz4.
