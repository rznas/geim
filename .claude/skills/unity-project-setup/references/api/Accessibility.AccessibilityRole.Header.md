<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AccessibilityRole.Header.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The accessibility node behaves like a heading that divides content into sections, such as the title of a navigation bar.

On Windows, if this role is set on a node without a AccessibilityNode.label, the screen reader announces the node as a "header". On other platforms, if this role is set on a node, the screen reader announces the node as a "heading" regardless of whether the node has a label set. 
 
 On mobile platforms, this role enables heading navigation, which allows users to more efficiently navigate an application by moving from one heading to the next without having to navigate through all the nodes in between. On Android, this navigation mode can be activated through the "Headings" [reading control](https://support.google.com/accessibility/android/answer/6006598?hl=en#:~:text=Choose%20reading%20controls ) in TalkBack. On iOS, it can be accessed through the "Headings" control in the [VoiceOver rotor](https://support.apple.com/en-us/111796 ). 
 
 On macOS, accessibility nodes with this role may be listed in the "Window Spots" menu of the [VoiceOver rotor](https://support.apple.com/en-us/guide/voiceover/mchlp2719/mac ). 
 
 **Platform support**: On Android, this role is only supported starting with Android 9 (API level 28).
