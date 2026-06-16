<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GlobalObjectId-targetObjectId.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The local file ID of the referenced object.

This is the ID that uniquely identifies each individual object in an asset file. For objects that are not part of a prefab, this is sufficient to identify the object. For more information on asset files and meta data, refer to Asset Metadata in the Manual.

For a GameObject that's part of a prefab, the `targetObjectId` alone is not sufficient to identify the object because additional instances of the object are created for every instance of the prefab in the scene. To identify such objects unambiguously, the ID of the prefab instance they belong to is also required. For more information, refer to GlobalObjectId.targetPrefabId.

The `targetObjectId` constitutes the `{l}` element in the string representation of a `GlobalObjectId`, the format of which is:

@@GlobalObjectId_V1-{i}-{a}-{l}-{p

**Note**: Actual local file IDs are signed 64-bit values and can be negative. But in a `GlobalObjectId`, these values are cast to `targetObjectId`, which is an unsigned 64-bit value (`ulong`). Therefore, a negative local file ID will lose its sign when saved to a `GlobalObjectId` and you should not rely on the value of `targetObjectId`, or the `{l}` element from the string representation of a GlobalObjectID, to find an object.

Additional resources: AssetDatabase.TryGetGUIDAndLocalFileIdentifier
