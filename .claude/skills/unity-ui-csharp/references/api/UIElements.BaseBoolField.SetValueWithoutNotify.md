<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.BaseBoolField.SetValueWithoutNotify.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the value of the BaseBoolField, but does not notify the rest of the hierarchy of the change.

This method is useful when you want to change the control's value without triggering events. For example, you can use it when you initialize UI to avoid triggering unnecessary events, and to prevent situations where changing the value of one control triggers an event that tries to update another control that hasn't been initialized, and may not exist yet.

 This method is also useful for preventing circular updates. Let's say you link two controls so they always have the same value. When a user changes the value of the first control, it fires an event to update the value of the second control. If you update the second control's value "normally," as though a user changed it, it will fire another event to update the first control's value, which will fire an event to update the second control's value again, and so on. If one control update's the other's value using SetValueWithoutNotify, the update does not trigger an event, which prevents the circular update loop.
