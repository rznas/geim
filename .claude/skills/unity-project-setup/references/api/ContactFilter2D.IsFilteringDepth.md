<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ContactFilter2D.IsFilteringDepth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The GameObject used to check the z-position (depth) of Transform.position. |

### Returns

**bool** Returns true when `obj` is excluded by the filter and false if otherwise.

### Description

Checks if the Transform for `obj` is within the depth range to be filtered.

Filtering is defined as including or excluding objects based upon a specific condition. Depth filtering checks the z-position of a GameObject Transform.position and includes it when it is within the depth range and excludes it if otherwise. IsFilteringDepth returns true when useDepth is set to true and the `obj` transform's z-position is outside the depth defined by minDepth and maxDepth. This indicates the `obj` is filtered which means it should be excluded. IsFilteringDepth returns false if otherwise. **Note:**: Setting useOutsideDepth to true inverts the function behavior and it returns opposite results. Additional resources: useDepth, ::ref:minDepth & maxDepth.
