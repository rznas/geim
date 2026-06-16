<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GlobalObjectId-assetGUID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The GUID for the asset that the referenced object belongs to.

The `assetGUID` constitutes the `{a}` element in the string representation of a `GlobalObjectId`, the format of which is:

`GlobalObjectId_V1-{i}-{a}-{l}-{p}`

The GUID is a globally unique identifier that Unity assigns to every newly discovered asset. For more information, refer to Asset Metadata in the Manual.

Additional resources: AssetDatabase.AssetPathToGUID, AssetDatabase.GUIDToAssetPath, AssetDatabase.TryGetGUIDAndLocalFileIdentifier
