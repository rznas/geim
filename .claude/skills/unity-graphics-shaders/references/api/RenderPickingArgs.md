<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderPickingArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides information about what is expected to render during the current picking rendering callback.

### Properties

| Property | Description |
| --- | --- |
| pickingIndex | Specifies the picking index value that the first pickable object uses to write to the picking render texture. |
| renderObjectSet | A set of GameObjects to check and determine what this callback is expected to render. |
| renderPickingType | Specifies the type of the current picking rendering the callback is invoked with. |

### Public Methods

| Method | Description |
| --- | --- |
| NeedToRenderForPicking | Checks whether a GameObject should be rendered in the current render picking callback. |
| RenderObjectSetContains | The function tests whether a GameObject is in the RenderPickingArgs.renderObjectSet. |
