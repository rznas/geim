<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityHierarchy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The hierarchy data model that the screen reader uses to navigate and interact with a Unity application.

For a screen reader to navigate an application, it must receive information like what the accessible elements are, where they are placed on the screen, what role they have, and how the user can interact with them. This information needs to be organized in a hierarchy of data structures called the `AccessibilityHierarchy`. 

 The accessibility hierarchy operates independently of the UI hierarchy. You can use these APIs with any UI system and even with non-UI elements, such as elements that are part of your game. 

 The data structures that form the accessibility hierarchy are called AccessibilityNodes. Each node represents a visual element that needs to be accessible to the screen reader. A node can have zero or more AccessibilityNode.children and one AccessibilityNode.parent. AccessibilityHierarchy.rootNodes are the top-level nodes in the hierarchy, having no parent. 

 Users can navigate the accessibility hierarchy sequentially by moving the screen reader focus from one node to another. Some screen readers follow a depth-first traversal order, navigating to a node's children before moving to its siblings, while others navigate based on the position of the nodes on the screen (given by their AccessibilityNode.frame). 

 To enable the screen reader to navigate an accessibility hierarchy, you must assign the hierarchy to AssistiveSupport.activeHierarchy to activate it. To manage system resources efficiently, Unity does not save the active hierarchy while the screen reader is off. You must activate the hierarchy each time the screen reader is turned on (see AssistiveSupport.screenReaderStatusChanged and AssistiveSupport.isScreenReaderEnabled). 

 If you modify the active hierarchy, then you must notify the screen reader by calling IAccessibilityNotificationDispatcher.SendLayoutChanged or IAccessibilityNotificationDispatcher.SendScreenChanged (depending on the scale of the changes). Modifications in the accessibility hierarchy consist of calls to:

- AccessibilityHierarchy.AddNode
- AccessibilityHierarchy.Clear
- AccessibilityHierarchy.InsertNode
- AccessibilityHierarchy.MoveNode
- AccessibilityHierarchy.RemoveNode
- Modifications to node AccessibilityNode.frame values.

These APIs are currently supported on the following platforms:

- RuntimePlatform.Android - starting with Android 8.0 (API level 26)
- RuntimePlatform.IPhonePlayer
- RuntimePlatform.OSXPlayer
- RuntimePlatform.WindowsPlayer

Additional resources:

- Accessibility for mobile applications
- [Sample project using the accessibility APIs](https://github.com/Unity-Technologies/a11y-public-sample )

### Properties

| Property | Description |
| --- | --- |
| rootNodes | The root nodes of the hierarchy. |

### Public Methods

| Method | Description |
| --- | --- |
| AddNode | Creates a new AccessibilityNode with the given label and adds it to the hierarchy under the given parent. |
| Clear | Resets the hierarchy to an empty state, removing all nodes and the screen reader focus. |
| ContainsNode | Verifies whether the given node exists in the accessibility hierarchy. |
| GetLowestCommonAncestor | Retrieves the lowest common ancestor of two nodes in the accessibility hierarchy. |
| InsertNode | Creates a new AccessibilityNode with the given label and inserts it at the given index in the hierarchy, under the given parent. |
| MoveNode | Moves the node elsewhere in the accessibility hierarchy. For example, under a different parent or at a different position in the parent's child list. |
| RefreshNodeFrames | Refreshes the AccessibilityNode.frame of all nodes in the accessibility hierarchy. |
| RemoveNode | Removes the node from the accessibility hierarchy and removes or re-parents its descendants. |
| TryGetNode | Tries to retrieve the AccessibilityNode with the given ID in the hierarchy. |
| TryGetNodeAt | Tries to retrieve the AccessibilityNode at the given screen coordinates. |
