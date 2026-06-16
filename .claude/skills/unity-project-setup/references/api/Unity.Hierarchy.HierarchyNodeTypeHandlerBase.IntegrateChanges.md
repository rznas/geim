<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Hierarchy.HierarchyNodeTypeHandlerBase.IntegrateChanges.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cmdList | A hierarchy command list that can modify the hierarchy. |

### Returns

**bool** `true` if more invocations are needed to complete integrating changes, and `false` if the handler is done integrating changes.

### Description

Callback that determines if changes from an update need to be integrated into the hierarchy. `IntegrateChanges` is called after ChangesPending returns `true`. When the hierarchy is updated, `ChangesPending` is called on all registered node ype handlers. If they return true, then `IntegrateChanges` is called on them. If they return false, then `IntegrateChanges` is not called on them.
