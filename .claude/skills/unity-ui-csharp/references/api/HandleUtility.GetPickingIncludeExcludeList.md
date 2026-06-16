<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.GetPickingIncludeExcludeList.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| allocator | The allocator to use to create the PickingIncludeExcludeList object. |

### Returns

**PickingIncludeExcludeList** The PickingIncludeExcludeList struct.

### Description

Gets the picking PickingIncludeExcludeList for the currently executing BatchRendererGroup.OnPerformCulling callback.

**Note**: If you call this method outside of a BatchRendererGroup.OnPerformCulling callback, it returns an empty PickingIncludeExcludeList object.
