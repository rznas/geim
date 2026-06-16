<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneVisibilityManager.TogglePicking.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObject | GameObject on which to toggle picking ability. |
| includeDescendants | Whether to include descendants. |

### Description

Toggles the picking ability of a GameObject.

When includeDescendants is true, a descendant is set to the same picking state as the parent GameObject. When includeDescendants is false, the picking state of descendants are not affected.
