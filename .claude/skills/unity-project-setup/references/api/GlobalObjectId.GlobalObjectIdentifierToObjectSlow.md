<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GlobalObjectId.GlobalObjectIdentifierToObjectSlow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | The `GlobalObjectId` to lookup. |

### Returns

**Object** Returns a reference to the object.

Returns `null` if the `GlobalObjectId` can't be found, or if the object is inside a scene and the scene isn't loaded.

### Description

Obtains a reference to an object from its unique object identifier.

This method is slow. Use it sparingly. If you use this method in a large project within other performance-sensitive contexts such as ISerializationCallbackReceiver.OnBeforeSerialize or ISerializationCallbackReceiver.OnAfterDeserialize, it's strongly recommended to profile the performance impact.

Additional resources: GlobalObjectId.GlobalObjectIdentifiersToObjectsSlow
