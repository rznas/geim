<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Hierarchy.HierarchyNodeTypeHandlerBase.ChangesPending.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** `true` if changes are pending, `false` otherwise.

### Description

Callback that determines if pending changes from a registered node type handler need to be applied to the hierarchy. When the hierarchy is updated, `ChangesPending` is called on all registered node ype handlers. If they return true, then `IntegrateChanges` is called on them. If they return false, then `IntegrateChanges` is not called on them.
