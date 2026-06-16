<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GlobalObjectId.GlobalObjectIdentifiersToEntityIdsSlow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| identifiers | Array of GlobalObjectIds to convert to EntityIds. |
| outputEntityIds | Array of `EntityId` objects to write to. |

### Description

Creates an array of instance IDs based on an array of unique object identifiers.

For each item in `identifiers`, this method obtains its `EntityId` and writes it to the corresponding element in `outputEntityIds`. Both arrays must be the same size.

 Any `GlobalObjectIds` in the `identifiers` array that can't be resolved are given a value of `0` in the output `EntityId` array.

 This method is slow. Use it sparingly. If you use this method in a large project within other performance-sensitive contexts such as ISerializationCallbackReceiver.OnBeforeSerialize or ISerializationCallbackReceiver.OnAfterDeserialize, it's strongly recommended to profile the performance impact.

 Additional resources: GlobalObjectId.GlobalObjectIdentifierToEntityIdSlow
