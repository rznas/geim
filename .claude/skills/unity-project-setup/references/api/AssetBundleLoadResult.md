<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetBundleLoadResult.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The result of an Asset Bundle Load or Recompress Operation.

### Properties

| Property | Description |
| --- | --- |
| Success | The operation completed successfully. |
| Cancelled | The operation was cancelled. |
| NotMatchingCrc | The decompressed Asset data did not match the precomputed CRC. This may suggest that the AssetBundle did not download correctly. |
| FailedCache | The Asset Bundle was not successfully cached. |
| NotValidAssetBundle | This does not appear to be a valid Asset Bundle. |
| NoSerializedData | The Asset Bundle does not contain any serialized data. It may be empty, or corrupt. |
| NotCompatible | The AssetBundle is incompatible with this version of Unity. |
| AlreadyLoaded | The Asset Bundle is already loaded. |
| FailedRead | Failed to read the Asset Bundle file. |
| FailedDecompression | Failed to decompress the Asset Bundle. |
| FailedWrite | Failed to write to the file system. |
| FailedDeleteRecompressionTarget | The target path given for the Recompression operation could not be deleted for swap with recompressed bundle file. |
| RecompressionTargetIsLoaded | The target path given for the Recompression operation is an Archive that is currently loaded. |
| RecompressionTargetExistsButNotArchive | The target path given for the Recompression operation exists but is not an Archive container. |
