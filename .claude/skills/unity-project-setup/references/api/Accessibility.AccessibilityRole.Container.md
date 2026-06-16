<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityRole.Container.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The accessibility node is a container of other nodes (examples of containers include tab bars and scroll views).

Apply this role to parent AccessibilityNode elements to enable smoother and more efficient screen reader navigation. 
 
 **When to use** 
 
 You can use this role to organize complex interfaces. For example, you can represent a tab bar as a container node with multiple tabs as child nodes. This allows users to navigate between tabs without having to navigate through all the other elements on the screen. 
 
 This role is especially useful in:

- Tab groups or sections of a user interface that need distinct boundaries.
- Navigation bars or toolbars that contain buttons or other controls.
- Popups, dialogs, or other temporary views.
- Forms or panels that contain related input fields or controls.
- Scroll views or other containers that contain a large amount of content.

**Android behavior** 
 
 Container nodes themselves are not directly focusable, but they do provide the screen reader with key information that enhances navigation:

- They enable container navigation, which can be activated through the "Containers" [reading control](https://support.google.com/accessibility/android/answer/6006598?hl=en#:~:text=Choose%20reading%20controls ) in TalkBack. In this navigation mode, users can move from one container to the next without having to navigate through all the nodes in between.
- Starting with Android 14 (API level 34), the screen reader may announce when the user enters or exits a container.

To ensure proper announcements, container nodes must have a AccessibilityNode.label set. 
 
 Setting AccessibilityNode.isActive on a container node has no effect. 
 
 **iOS behavior** 
 
 Container nodes are not directly focusable during standard screen reader navigation (called flat navigation on iOS), but they provide essential context for the screen reader:

- They enable container navigation, which can be activated through the "Containers" control in the [VoiceOver rotor](https://support.apple.com/en-us/111796 ). As on Android, this navigation mode allows users to navigate efficiently between containers.
- They enable [grouped navigation](https://support.apple.com/en-us/guide/iphone/iphfa3d32c50/ios#:~:text=Use%20flat%20or%20grouped%20navigation ), which can be accessed through the "Navigation Style" control in the VoiceOver rotor. In grouped navigation, container nodes are focusable. When navigating sequentially, the screen reader focuses on the container node directly instead of focusing on its child nodes. To navigate through the container's child nodes, the user must move into the container by performing a dedicated gesture. Once in a container, the user must first move out of it to navigate to nodes outside of the container. This navigation style is particularly useful in complex interfaces, where it simplifies and speeds up navigation.
- In flat navigation, the screen reader announces the container node's label when the user enters the container by focusing on any of its child nodes. In grouped navigation, the screen reader announces the container node both when entering and when exiting it.

Container nodes must have a AccessibilityNode.label set to ensure proper functionality in all of the cases presented above. 
 
 Setting AccessibilityNode.isActive on a container node has no effect. 
 
 **macOS behavior** 
 
 As opposed to Android and iOS, container nodes are focusable in standard screen reader navigation on macOS. 
 
 As in the grouped navigation style on iOS, the screen reader focuses on the container node directly instead of focusing on its child nodes. To access the container's child nodes, the user must move into the container by using a dedicated VoiceOver command. Once in a container, the user must first move out of it to navigate to sibling nodes or other parts of the hierarchy. This navigation style is useful for the user because it streamlines navigation in complex interfaces specific to desktop applications. 
 
 This navigation style is available for any parent nodes, even if they do not have this role set. However, setting this role allows the screen reader to announce the node as a "group" and provide instructions on how to interact with its child nodes. 
 
 The screen reader announces when the user enters or exits any kind of parent node. When moving into it, the screen reader also announces the number of its child nodes. 
 
 Container nodes may be listed in the "Window Spots" menu of the [VoiceOver rotor](https://support.apple.com/en-us/guide/voiceover/mchlp2719/mac ). 
 
 Setting other roles on a parent node may result in unintended screen reader behavior. 
 
 For proper functionality, container nodes must have a AccessibilityNode.label set. 
 
 Unlike on Android and iOS, setting AccessibilityNode.isActive to `false` on a container node deactivates both the node itself and its child nodes. 
 
 **Windows behavior** 
 
 Container nodes are not directly focusable, but they do provide the screen reader with key information that enhances navigation. 
 
 If a container node has AccessibilityNode.isActive set to `true` and has a AccessibilityNode.label set, the screen reader announces its label and role (as a "group") when the user enters the container by focusing on any of its child nodes. 
 
 Setting AccessibilityNode.isActive on a container node has no effect on its child nodes.
