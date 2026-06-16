<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityNode-allowsDirectInteraction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether the accessibility node allows direct touch interaction while the screen reader is active.

This property controls whether the node can be interacted with using standard gestures, bypassing the screen reader. This is useful for elements such as a piano keyboard, a drawing canvas, or gameplay that requires quick or complex gestures. 

 If this property is set to `true`, the screen reader provides instructions on how to enable direct touch. The user can then directly interact with the user interface area corresponding to the node's AccessibilityNode.frame without the screen reader interfering. 

 If this property is set to `true` and the node does not have a AccessibilityNode.label, the screen reader announces the node as a "direct touch area". 

 Generally, accessibility nodes should have this property set to `false` to ensure that the screen reader can provide the necessary context and instructions to the user. Only set this property to `true` in cases where the user experience would be significantly impaired by the screen reader's interference, and where the user can still understand and interact with the content of the direct touch area without the screen reader's assistance. 

 If necessary, use the AccessibilityNode.hint property to provide users with instructions on how to interact with the content of the node when direct interaction is enabled. 

 **Platform support**: This property is only supported on iOS.
