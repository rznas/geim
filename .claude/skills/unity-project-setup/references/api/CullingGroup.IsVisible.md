<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CullingGroup.IsVisible.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index of the bounding sphere. |

### Returns

**bool** True if the sphere is visible; false if it is invisible.

### Description

Returns true if the bounding sphere at index is currently visible from any of the contributing cameras.

Note that this method uses the most recently computed visibility states. Visibility is updated immediately before rendering, so using this method in Update/LateUpdate will provide results based on calculations from the previous frame.
