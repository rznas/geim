<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CullingGroup.QueryIndices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| visible | True if only visible spheres should be retrieved; false if only invisible spheres should be retrieved. |
| distanceIndex | The distance band that retrieved spheres must be in. |
| result | An array that will be filled with the retrieved sphere indices. |
| firstIndex | The index of the sphere to begin searching at. |

### Returns

**int** The number of sphere indices found and written into the result array.

### Description

Retrieve the indices of spheres that have particular visibility and/or distance states.

Use the overload that corresponds to the state properties you are interested in. For example, if you want to retrieve visible spheres in any distance band, use the overload that takes a 'visible' parameter but does not have a 'distanceIndex' parameter.

The length of the result array is used to limit the number of spheres checked. If you provide a result array of length 20, and a firstIndex of 10, then the query will only examine spheres 10 through 30 to see if they meet the given visibility and/or distance constraints.
