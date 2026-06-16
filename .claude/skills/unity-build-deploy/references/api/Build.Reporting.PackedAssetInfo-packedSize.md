<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Reporting.PackedAssetInfo-packedSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The size in bytes of the Packed Asset.

This is the size prior to any compression. The actual size on disk can be smaller when the file is stored inside a Unity Archive (e.g. in the case of a AssetBundle, or a Player built with BuildOptions.CompressWithLz4HC).

Note: there can be extra padding bytes inserted between Packed Assets, added for alignment purpose. Because of this, the offset + packedSize may be slightly smaller than the offset of the next element in the PackedAsset array.

Additional resources: PackedAssets._contents
