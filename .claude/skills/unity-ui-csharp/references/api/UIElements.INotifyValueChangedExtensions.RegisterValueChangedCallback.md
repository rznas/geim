<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.INotifyValueChangedExtensions.RegisterValueChangedCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Registers this callback to receive ChangeEvent_1 when the value is changed.

This calls CallbackEventHandler.RegisterCallback_1 on the same control (equivalent to registering a ChangeEvent_1 callback directly). ChangeEvent_1 participates in propagation; handlers on an ancestor receive bubbled events from descendant controls of the same event type.

Use EventBase.target to identify which element originated the change, and EventBase.currentTarget for the element on which the callback was registered. Refer to the Change events manual page for guidance on filtering and composite controls.
