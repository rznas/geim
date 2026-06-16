<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildOptions.CompressWithLz4.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use chunk-based LZ4 compression when building the Player.

This value allows content to be stored in a compressed form when the Player is deployed to a device. Decompression is performed in real time when the Player reads the data. Scene or Asset loading might be faster or slower depending on disk read speed when compared to using uncompressed data.

When this flag is passed the player content is stored inside a Unity Archive file named **data.unity3d**. The build process splits the data into 128KB chunks and applies LZ4 compression to each chunk. For higher compression the BuildOptions.CompressWithLz4HC flag can be used instead.

This archive file contains the following content:

1. Player settings - *globalgamemanagers* and *globalgamemanagers.assets** files.
2. Scenes and referenced Assets - *level** and *sharedassets*.asset* files.
3. Assets from Resources folders - *resources.assets* files.
4. Global Illumination data - GI/level* files.
5. Built-in resources - *Resources/unity_builtin_extra* file.

This archive file does not contain the *Resources/unity default resources* file.

This feature is supported for **Standalone**, **Android** and **iOS** build targets and is default for **WebGL** target. 
 Enabling *CompressWithLz4* in **Android** might be a significant performance boost when loading data, as LZ4 decompression is faster than the default Zip decompression.

**Note:** 
 Using chunk-based compression for player data will reduce the size of the player on the device, while still allowing efficient loading. However chunk-based compression is typically not as small as full-file compression, and it will not compress much further if another layer of compression is applied at packaging time. Hence the game installer might end up a bit larger when using this flag.

LZ4 compression can also be applied to AssetBundles. For more information, refer to BuildAssetBundleOptions.ChunkBasedCompression and AssetBundles-Cache.

Additional resources: ReducingFilesize, ArchiveHandle.Compression.
