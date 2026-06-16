<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.CallbackOptions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Extra properties that can be used in CallbackEventHandler.RegisterCallback_1.

### Properties

| Property | Description |
| --- | --- |
| Default | No option enabled. |
| TrickleDown | Callback reacts during the TrickleDown phase. If not set, callback reacts during the BubbleUp phase. |
| IncludeDisabled | Callback executes on disabled target even if the event has EventBase.ignoreDisabledElements. |
| Once | Callback is unregistered automatically after being successfully executed. |
| Removable | Callback can be unregistered with CallbackEventHandler.UnregisterAllRemovableCallbacks. |
