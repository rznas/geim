<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AssistiveSupport-activeHierarchy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The accessibility hierarchy that is currently accessible to screen readers.

An active AccessibilityHierarchy is required to make the content of an application accessible to screen reader users. 

 To manage system resources efficiently, setting this property only takes effect if the screen reader is on, where the value of AssistiveSupport.isScreenReaderEnabled is `true`. Similarly, when the screen reader is turned off, so when the AssistiveSupport.screenReaderStatusChanged event is sent with a `false` parameter or when AssistiveSupport.screenReaderStatusOverride is set to AssistiveSupport.ScreenReaderStatusOverride.ForceDisabled, this property is automatically set to `null`. You must set it each time the screen reader is turned on. 

 When this property is set, Unity notifies the screen reader of the new hierarchy by calling IAccessibilityNotificationDispatcher.SendScreenChanged (with a `null` parameter).
