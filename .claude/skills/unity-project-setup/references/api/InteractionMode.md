<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/InteractionMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The mode of interaction, user or automated, that an API method is called with.

Some of Unity’s API methods allow you to specify whether the “interaction mode” is user-driven or automated. This affects whether Unity shows dialog boxes, and whether actions are recorded in the undo history. Automated actions do not record undo or present dialogs. User actions are recorded in the undo history, and may present the user with dialogs. You can only use this setting with methods that accept an InteractionMode parameter.

This is useful if you want to create editor tools or automated processes which perform editor actions.

### Properties

| Property | Description |
| --- | --- |
| AutomatedAction | Use this setting to prevent a method from showing any dialog boxes to the user, and to prevent it recording to the undo history. |
| UserAction | Use this setting to allow a method to show dialog boxes to the user, and to allow it to record to the undo history. |
