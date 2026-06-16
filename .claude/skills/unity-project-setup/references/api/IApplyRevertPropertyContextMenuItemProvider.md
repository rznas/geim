<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IApplyRevertPropertyContextMenuItemProvider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Used to identify a MonoBehaviour that provides a hook into the apply/revert context menu for Prefabs open in Prefab Mode and non Prefabs.

Any prefab instance with overrides displays Apply/Revert context menu items when a user right clicks on a prefab override property in the inspector.

 This interface provides an extension hook to that prefab override builtin behaviour for prefabs in edit mode.

### Public Methods

| Method | Description |
| --- | --- |
| GetSourceName | Returns the component specific name to be used in the apply menu item. |
| GetSourceTerm | Returns the name of the source term to be used in the apply/revert menu item. |
| TryGetApplyMethodForFieldName | Extension hook for an optional property apply menu item. |
| TryGetRevertMethodForFieldName | Extension hook for an optional property revert menu item. |
