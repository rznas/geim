<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneVisibilityManager.IsHidden.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObject | GameObject to check. |
| includeDescendants | Specify true to check the GameObject and all its descendants. Set to false to check the GameObject. |

### Returns

**bool** When includeDescendants is true, this method returns true when the GameObject and all its descendants are hidden. When includeDescendants is false, this method returns true when the GameObject is hidden.

### Description

Checks the hidden state of a GameObject and, optionally, its descendants.

When includeDescendants is true, this method returns true when the GameObject and all its descendants are hidden. When includeDescendants is false, this method returns true when the GameObject is hidden.
