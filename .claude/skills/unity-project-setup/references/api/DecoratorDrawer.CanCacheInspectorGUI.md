<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DecoratorDrawer.CanCacheInspectorGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** Whether the inspector GUI for your decorator can be cached.

### Description

Override this method to determine whether the inspector GUI for your decorator can be cached.

The default is true. If your UI is only using EditorGUI controls, it is cacheable. If you're using Handles, GL, or some other method to draw directly into your rect, then you should override this method and return false when your property is visible.
