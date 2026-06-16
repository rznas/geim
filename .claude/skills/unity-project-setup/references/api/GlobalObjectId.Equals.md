<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GlobalObjectId.Equals.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | The other GlobalObjectId to compare with this instance. |

### Returns

**bool** Returns `true` if the two instances of GlobalObjectId are value equivalent. Otherwise, returns `false`.

### Description

Checks if this unique object identifier and another are equal.

This method performs a value equality check. It returns true if the values of every property on this `GlobalObjectId` match the values of the equivalent properties on the `GlobalObjectId` supplied as a parameter. Any two instances of `GlobalObjectId` that are value equivalent must by definition identify the same object.

 Additional resources: GlobalObjectId.CompareTo
