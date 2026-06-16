<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DialogOptOutDecisionType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gives the user the option to stop the dialog box appearing again. This decision applies to the current user only.

If a decision is set for both ForThisSession and ForThisUser, Unity uses the decision for ForThisUser. Note that ForThisMachine is for backwards compatibility only, use ForThisUser instead.

Users can reset their choices by clicking the reset button in Editor Preferences.

### Properties

| Property | Description |
| --- | --- |
| ForThisSession | Gives the user the option to stop the dialog box appearing again. This decision affects the current user for the duration of the current Editor session. |
| ForThisUser | Gives the user the option to stop the dialog box appearing again. This decision affects the current user only. |
| ForThisMachine | Gives the user the option to stop the dialog box appearing again. This decision affects the current user on the current machine. |
