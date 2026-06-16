<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityNode-role.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The type of user interface element that the accessibility node represents.

The node's role defines the type or purpose of the visual element represented by the node. It assigns a semantic meaning to the node, such as a heading, a button, or a toggle, that informs screen readers how to interact with the node and announce its purpose appropriately. 

 For example, on mobile platforms, a node with the role AccessibilityRole.Button can be interacted with by performing a double-tap gesture, while a node with the role AccessibilityRole.Slider can be interacted with by performing a swipe gesture. Alternatively, a node with the role AccessibilityRole.Header can be used in heading navigation, which allows users to more efficiently navigate an application by moving from one heading to the next without having to navigate through all the content in between. 

 Setting accurate roles improves the usability and user experience of your user interface by enabling the screen reader to set clear expectations for the user. A missing role can block the user from interacting with your application, and an incorrect role can cause confusion and frustration. 

 If the role is set, the screen reader might announce it when the user focuses on the node, usually after reading the node's label and value. 

 If the visual element that the node represents has a role that is not covered by any of the predefined AccessibilityRoles, use the default value of this property, AccessibilityRole.None, and provide information about the node's purpose and behavior in properties such as the AccessibilityNode.label and AccessibilityNode.hint.
