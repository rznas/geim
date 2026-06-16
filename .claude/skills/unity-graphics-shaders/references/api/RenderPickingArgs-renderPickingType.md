<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderPickingArgs-renderPickingType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the type of the current picking rendering the callback is invoked with.

Unity picking rendering is categorized into two types that have two different purposes. Your rendering must adhere to this type specification. Those types are:

- RenderPickingType.RenderFromIgnoreSet: Render from an ignore set, also known as an exclusion set, of GameObjects. This is the main rendering mode. You must render all your custom geometries, except for those whose representing GameObjects are in the ignore set. You can query this information with RenderObjectSetContained.
- RenderPickingType.RenderFromFilterSet: Render from a filter set, also known as an inclusion set, of GameObjects. Unity uses this rendering mode to verify that a GameObject is still pickable under a new mouse click position. You must only render custom geometries whose representing GameObjects are in the filter set. You can query this information with RenderObjectSetContained.

Additional resources: RenderObjectSetContains.
