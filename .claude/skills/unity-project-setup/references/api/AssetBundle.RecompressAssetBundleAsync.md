<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetBundle.RecompressAssetBundleAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| inputPath | Path to the AssetBundle to recompress. |
| outputPath | Path to the recompressed AssetBundle to be generated. Can be the same as inputPath. |
| method | The compression method, level and blocksize to use during recompression. Only some BuildCompression types are supported (see note). |
| expectedCRC | CRC of the AssetBundle to test against. Testing this requires additional file reading and computation. Pass in 0 to skip this check. Unity does not compute a CRC when the source and destination BuildCompression are the same, so no CRC verification takes place (see note). |
| priority | The priority at which the recompression operation should run. This sets thread priority during the operation and does not effect the order in which operations are performed. Recompression operations run on a background worker thread. |

### Description

Asynchronously recompress a downloaded/stored AssetBundle from one BuildCompression to another.

Method must be a BuildCompression whose name ends with Runtime, for example LZ4Runtime, otherwise an ArgumentException is thrown. When the destination BuildCompression is the same as the source, this becomes a copy operation internally, and Unity does not compute a CRC of the uncompressed data. Passing in a non-zero expectedCRC in this case raises a warning, and no CRC validation takes place.
