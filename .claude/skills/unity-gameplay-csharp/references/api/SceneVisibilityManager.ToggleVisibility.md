<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneVisibilityManager.ToggleVisibility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObject | GameObject on which to toggle visibility. |
| includeDescendants | Whether to include descendants. |

### Description

Toggles the visible state of a GameObject.

When includeDescendants is true, a descendant is set to the same visible state as the parent GameObject. When includeDescendants is false, the visibility state of descendants are not affected.
