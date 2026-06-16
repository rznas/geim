<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GlobalObjectId.GlobalObjectIdentifierToEntityIdSlow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | The `GlobalObjectId` to lookup. |

### Returns

**EntityId** Returns the `EntityId` of the object.

 If the `GlobalObjectId` can't be found, or if the scene isn't loaded, returns `0`.

### Description

Obtains the EntityId of the object from its unique object identifier.

This method is slow. Use it sparingly. If you use this method in a large project within other performance-sensitive contexts such as ISerializationCallbackReceiver.OnBeforeSerialize or ISerializationCallbackReceiver.OnAfterDeserialize, it's strongly recommended to profile the performance impact.

 Additional resources: GlobalObjectId.GlobalObjectIdentifiersToInstanceIDsSlow
