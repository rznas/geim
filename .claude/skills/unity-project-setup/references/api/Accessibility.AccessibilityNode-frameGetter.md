<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityNode-frameGetter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**Func<Rect>** The calculated frame of the accessibility node, in screen coordinates.

### Description

Delegate that calculates the frame of the accessibility node, automatically keeping it up-to-date.

The node's frame can be set either through this delegate or through the AccessibilityNode.frame property. Using this delegate should simplify the update of the node's frame by automatically keeping it in sync with the coordinates of the visual element represented by the node. 

 If the AccessibilityNode.frame is not set, it gets its value from this delegate. 

 **Note**: If this delegate is not set, calling AccessibilityHierarchy.RefreshNodeFrames sets the AccessibilityNode.frame to Rect.zero.
