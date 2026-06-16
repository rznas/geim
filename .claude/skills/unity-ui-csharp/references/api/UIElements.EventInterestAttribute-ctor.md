<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.EventInterestAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| eventTypes | The affected method is guaranteed to be invoked if the incoming event has any of the specified types in this argument. |

### Description

Use this constructor when the affected method uses only specific event types that can easily be determined at compile time. Multiple EventInterestAttribute can be used on the same method to add more type interests.

### Parameters

| Parameter | Description |
| --- | --- |
| interests | The affected method is guaranteed to be invoked if the incoming event has any of the specified types in this argument. |

### Description

Use this constructor when the affected method treats events in a general, non type-specific manner. See EventInterestOptions for more information on the available argument values.
