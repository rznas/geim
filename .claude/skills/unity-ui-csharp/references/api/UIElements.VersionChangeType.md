<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VersionChangeType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Value used to signify some changes in the VisualElement

### Properties

| Property | Description |
| --- | --- |
| Bindings | Some data was bound |
| ViewData | persistent data ready |
| Hierarchy | changes to hierarchy |
| Layout | changes to properties that may have an impact on layout |
| StyleSheet | changes to StyleSheet, USS class |
| Styles | changes to styles |
| Overflow | changes to the overflow |
| BorderRadius | changes to the border radis |
| BorderWidth | changes to the border width |
| Transform | changes that may impact the world transform (e.g. laid out position, local transform) |
| Size | changes to the size of the element after layout has been performed, without taking the local transform into account |
| Repaint | The visuals of the element have changed |
| Opacity | The opacity of the element have changed |
| Color | Some color of the element has changed (background-color, border-color, etc.) |
| RenderHints | Some render hints were changed |
| TransitionProperty | The 'transition-property' style of the element has changed (impacts cancelling of ongoing style transitions) |
| EventCallbackCategories | The combined registered callbacks' EventCategory values has changed |
| DisableRendering | The DisableRendering flag has changed |
| BindingRegistration | Add or remove a binding was requested |
| DataSource | The data source of the element was changed |
| Picking | Some property changed that potentially invalidates cached Picking results |
