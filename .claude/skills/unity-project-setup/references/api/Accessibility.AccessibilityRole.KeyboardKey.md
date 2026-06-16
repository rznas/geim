<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityRole.KeyboardKey.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The accessibility node behaves like a keyboard key.

On mobile platforms, this role enables touch typing, which allows the user to activate the node by performing a single-tap gesture instead of the standard double-tap gesture. 
 
 Subscribe to the AccessibilityNode.invoked event to inform the screen reader that the node can be activated, and perform an appropriate action when the user activates it, such as invoking the key represented by the node. 
 
 **Platform support**

- On Android, this role is only supported starting with Android 10 (API level 29).
- This role has no effect on desktop platforms.

Additional resources:

- [Touch typing on Android](https://support.google.com/accessibility/android/answer/6006598?hl=en#:~:text=Edit%20text%20with%20Gboard )
- [Touch typing on iOS](https://support.apple.com/en-us/guide/iphone/iph3e2e3d1d/ios#:~:text=Touch%20typing )
