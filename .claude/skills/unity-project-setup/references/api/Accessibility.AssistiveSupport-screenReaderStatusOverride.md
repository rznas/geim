<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AssistiveSupport-screenReaderStatusOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether to override the screen reader status given by the operating system.

Set this property if you need to override the value returned by AssistiveSupport.isScreenReaderEnabled. 

 If this property is set to AssistiveSupport.ScreenReaderStatusOverride.OSDriven, its default value, AssistiveSupport.isScreenReaderEnabled returns the actual screen reader status given by the operating system. Otherwise, this property forces AssistiveSupport.isScreenReaderEnabled to return a specific value, regardless of the status given by the operating system. 

 **Note**: This property does not affect the actual status of the screen reader on the user's device.
