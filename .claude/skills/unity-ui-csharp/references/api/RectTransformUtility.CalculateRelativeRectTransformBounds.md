<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RectTransformUtility.CalculateRelativeRectTransformBounds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| root | The Transform to use when converting from world to local space. |
| child | The parent Transform object whose RectTransform children will be encapsulated. |
| trans | The Transform to both search for RectTransform children and convert into world to local space. |

### Returns

**Bounds** A Bounds object representing the encapsulated bounds in local space relative to the root Transform.

### Description

Creates a Bounds object that encapsulates all the child RectTransform objects found in the `child` parameter, and converts the resulting bounds into local space relative to the `root` transform.
