<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PanelExtensions.CreateMenu.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| panel | The panel that will create the menu. |

### Returns

**AbstractGenericMenu** An instance of `AbstractGenericMenu`.

### Description

Creates an instance of AbstractGenericMenu that is valid at Runtime or within the Editor.

If the is an `EditorPanel`, creates a `GenericOSMenu`. If the is a `RuntimePanel`, creates a `GenericDropdownMenu`.
