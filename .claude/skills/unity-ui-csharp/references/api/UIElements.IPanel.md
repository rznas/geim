<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IPanel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for classes implementing UI panels.

### Properties

| Property | Description |
| --- | --- |
| contextType | Describes in which context a VisualElement hierarchy is being run. |
| contextualMenuManager | The Contextual menu manager for the panel. |
| dispatcher | This Panel EventDispatcher. |
| focusController | Return the focus controller for this panel. |
| isDirty | Checks whether any element within the panel has had any changes to its state since the panel was last rendered. |
| scaledPixelsPerPoint | Gives the current scaled pixels per point value of the panel. |
| visualTree | Root of the VisualElement hierarchy. |

### Public Methods

| Method | Description |
| --- | --- |
| Pick | Finds the top-most VisualElement overlapping the provided point. |
| PickAll | Finds all VisualElements overlapping the provided point. |
