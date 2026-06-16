<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AssistiveSupport-isScreenReaderEnabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether the screen reader is turned on or off on the user's device.

You can use this property to customize your application's interface for screen reader users. For example, you might want visual elements that usually disappear quickly to persist onscreen for screen reader users. 

 You can also subscribe to the AssistiveSupport.screenReaderStatusChanged event to determine when the user turns the screen reader on or off. 

 To manage system resources efficiently, setting AssistiveSupport.activeHierarchy only takes effect if the value of this property is `true`.
