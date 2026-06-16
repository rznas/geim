<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GlobalObjectId.GetGlobalObjectIdSlow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetObject | The object to obtain the unique identifier for. |

### Returns

**GlobalObjectId** The `GlobalObjectId` for the object. If the conversion is unsuccessful, then the `GlobalObjectId` is set to the default null ID. The null ID has the string representation `GlobalObjectId_V1-0-00000000000000000000000000000000-0-0`

### Description

Obtains the unique object identifiers based on an object reference.

This method is slow. Use it sparingly. To get unique identifiers for multiple objects, it's recommended to use GlobalObjectId.GetGlobalObjectIdsSlow instead of making multiple calls to this method. If you use this method in a large project within other performance-sensitive contexts such as ISerializationCallbackReceiver.OnBeforeSerialize or ISerializationCallbackReceiver.OnAfterDeserialize, it's strongly recommended to profile the performance impact.

Additional resources: GlobalObjectId.GetGlobalObjectIdsSlow, Object.GetInstanceID

### Parameters

| Parameter | Description |
| --- | --- |
| instanceId | The instance ID of the object to obtain the unique identifier for. |

### Returns

**GlobalObjectId** The `GlobalObjectId` for the object. If the conversion is unsuccessful, then the `GlobalObjectId` is set to the default null ID. The null ID has the string representation `GlobalObjectId_V1-0-00000000000000000000000000000000-0-0`

### Description

Obtains the unique object identifiers based on an instance ID.

This method is slow. Use it sparingly. To get unique identifiers for multiple objects, it's recommended to use GlobalObjectId.GetGlobalObjectIdsSlow instead of making multiple calls to this method. If you use this method in a large project within other performance-sensitive contexts such as ISerializationCallbackReceiver.OnBeforeSerialize or ISerializationCallbackReceiver.OnAfterDeserialize, it's strongly recommended to profile the performance impact.

Additional resources: GlobalObjectId.GetGlobalObjectIdsSlow, Object.GetInstanceID
