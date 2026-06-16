<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GlobalObjectId.TryParse.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stringValue | The string representation of a `GlobalObjectId`.   The following is an example of the string representation: `GlobalObjectId_V1-2-74c253e3f16be4776bb2d88e01f77c8a-902906726-0`. For more information on the composition, refer to GlobalObjectId. |
| id | The `GlobalObjectId` struct to populate with the parsed values. |

### Returns

**bool** Returns `true` if the string representation is successfully parsed. Otherwise, returns `false`

### Description

Tries to parse the string representation of a GlobalObjectId into a GlobalObjectId struct.

This method takes the string representation of a unique object identifier and converts it to a `GlobalObjectId` struct.

Calling this method sets the state of the provided `GlobalObjectId`, but doesn't attempt to resolve it to an object reference. A return value of `true` doesn't guarantee that a call to GlobalObjectId.GlobalObjectIdentifierToObjectSlow or similar method will succeed.

Additional resources: GlobalObjectId.ToString
