<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityNode-isActive.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether the accessibility node is exposed to screen readers. The default value is `true`.

This property controls the visibility of the node to screen readers, ensuring that only relevant elements are accessible to the user. For example, elements that are covered by a modal view should not be accessible. 

 If this property is set to `false`, the screen reader ignores the node and prevents the user from focusing on it. This is useful when temporarily disabling the node is preferred over removing it from the hierarchy.
