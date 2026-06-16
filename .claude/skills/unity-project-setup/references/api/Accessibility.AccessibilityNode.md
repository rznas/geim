<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityNode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A node in the AccessibilityHierarchy representing a visual element, such as a UI element or an element that is part of your game, that needs to be accessible to the screen reader.

Accessibility nodes are data structures that enable screen readers to focus, announce and execute user actions on them. They represent visual elements in the application, but they exist and function independently of their corresponding visual elements. Changes to the visual representation of an element, such as its visibility, layering order or screen coordinates, do not affect the accessibility node that represents it. 

 To create an accessibility node, call AccessibilityHierarchy.AddNode on the hierarchy you want to add the node to. When calling this method, you can optionally specify the node's label and parent in the hierarchy. This method returns the created node. Use it to set different attributes and define the node's identity and functionality. 

 When a screen reader is active, users can navigate and interact with an application using specific gestures or commands that are easier to perform and prevent accidental actions. For this purpose, on mobile platforms, standard gestures, such as tap or swipe, do not work, or they perform different actions while the screen reader is on. Screen reader gestures and commands can vary across platforms, but they trigger the same accessibility events. For examples of gestures and commands on different platforms, refer to the **Events** section on this page. Subscribe to these events to detect user actions and to respond accordingly. 

 These APIs are currently supported on the following platforms:

- RuntimePlatform.Android - starting with Android 8.0 (API level 26)
- RuntimePlatform.IPhonePlayer
- RuntimePlatform.OSXPlayer
- RuntimePlatform.WindowsPlayer

Additional resources:

- Accessibility for mobile applications
- [Sample project using the accessibility APIs](https://github.com/Unity-Technologies/a11y-public-sample )
- [TalkBack gestures on Android](https://support.google.com/accessibility/android/answer/6151827 )
- [VoiceOver gestures on iPhone](https://support.apple.com/en-us/guide/iphone/iph3e2e2281/ios )
- [Narrator commands on Windows](https://support.microsoft.com/en-us/windows/chapter-2-narrator-basics-5ff4591e-7b6d-245e-c95d-ce83c0a1a8d4 )
- [VoiceOver commands on Mac](https://support.apple.com/en-us/guide/voiceover/vo14111/mac )

### Properties

| Property | Description |
| --- | --- |
| allowsDirectInteraction | Whether the accessibility node allows direct touch interaction while the screen reader is active. |
| children | The node's children in the accessibility hierarchy. |
| frame | The bounding rectangle of the accessibility node in screen coordinates. |
| frameGetter | Delegate that calculates the frame of the accessibility node, automatically keeping it up-to-date. |
| hint | Additional guidance or context for interacting with the accessibility node. |
| id | The unique identifier of the accessibility node. |
| isActive | Whether the accessibility node is exposed to screen readers. The default value is true. |
| isFocused | Whether the accessibility node is currently focused by the screen reader. |
| label | A short description of the accessibility node. |
| parent | The node's parent in the accessibility hierarchy. |
| role | The type of user interface element that the accessibility node represents. |
| state | The status of the visual element that the accessibility node represents. |
| value | The value of the visual element that the accessibility node represents. |

### Public Methods

| Method | Description |
| --- | --- |
| GetHashCode | A hash used for comparisons. |
| ToString | Provides a debugging string. |

### Events

| Event | Description |
| --- | --- |
| decremented | Event invoked when the user performs a "decrement" action when focused on the accessibility node. |
| dismissed | Event invoked when the user performs a "dismiss" action when focused on the accessibility node. |
| focusChanged | Event invoked on the main thread when the accessibility node gains or loses screen reader focus. |
| incremented | Event invoked when the user performs an "increment" action when focused on the accessibility node. |
| invoked | Event invoked when the user performs an "activate" action when focused on the accessibility node. |
| scrolled | Event invoked when the user performs a "scroll" action when focused on the accessibility node. |
| selected | Deprecated. Use AccessibilityNode.invoked instead. |
