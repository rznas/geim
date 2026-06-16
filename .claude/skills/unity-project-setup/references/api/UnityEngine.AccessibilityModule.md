<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UnityEngine.AccessibilityModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Accessibility module includes APIs and tools that facilitate the development of accessible user experiences in Unity.

This module is enabled by default in all new projects. To enable it in an older project, do the following in the Unity Editor:

1. Select **Window** > **Package Management** > **Package Manager** to open the **Package Manager**.
2. Select the **Built-in** section.
3. Select the **Accessibility** module and click **Enable**.

Alternatively, you can add this line to the **Packages/manifest.json** file to enable the module: `"com.unity.modules.accessibility": "1.0.0",`

Additional resources:

- Accessibility for mobile applications
- [Sample project using the accessibility APIs](https://github.com/Unity-Technologies/a11y-public-sample)

### Classes

| Class | Description |
| --- | --- |
| AccessibilityHierarchy | The hierarchy data model that the screen reader uses to navigate and interact with a Unity application. |
| AccessibilityNode | A node in the AccessibilityHierarchy representing a visual element, such as a UI element or an element that is part of your game, that needs to be accessible to the screen reader. |
| AccessibilitySettings | Access point to system accessibility settings on the user's device and to events that trigger when the user changes these settings. |
| AssistiveSupport | Access point to APIs that enable applications made with Unity to support assistive technologies. |
| VisionUtility | A class containing methods to assist with accessibility for users with different vision capabilities. |

### Enumerations

| Enumeration | Description |
| --- | --- |
| AccessibilityRole | Options for defining the role of an AccessibilityNode to screen readers. |
| AccessibilityScrollDirection | Describes the direction of a scrolling action. |
| AccessibilityState | Options for defining the state of an AccessibilityNode to screen readers. |
