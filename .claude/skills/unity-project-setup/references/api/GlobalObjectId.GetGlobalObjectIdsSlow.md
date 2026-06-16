<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GlobalObjectId.GetGlobalObjectIdsSlow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| objects | Array of objects to obtain unique identifiers for. |
| outputIdentifiers | Array of `GlobalObjectId` objects to write to. |

### Description

Creates an array of unique object identifiers based on an array of objects.

For each item in `objects`, this method obtains its unique `GlobalObjectId` and writes it to the corresponding element in `outputIdentifiers`. Both arrays must be the same size.

This method is slow. Use it sparingly and avoid making multiple calls.

Additional resources: GlobalObjectId.GetGlobalObjectIdSlow, Object.GetInstanceID

### Parameters

| Parameter | Description |
| --- | --- |
| outputIdentifiers | Array of `GlobalObjectId` objects to write to. |
| instanceIds | Array of instance IDs of the objects to obtain unique identifiers for. |

### Description

Creates an array of unique object identifiers based on an array of instance IDs.

For each object identified by an item in `instanceIds`, this method obtains the unique `GlobalObjectId` and writes it to the corresponding element in `outputIdentifiers`. Both arrays must be the same size.

This method is slow. Use it sparingly and avoid making multiple calls.

Additional resources: GlobalObjectId.GetGlobalObjectIdSlow, Object.GetInstanceID
