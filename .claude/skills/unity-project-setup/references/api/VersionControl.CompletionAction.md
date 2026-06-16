<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.CompletionAction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Different actions a version control task can do upon completion.

### Properties

| Property | Description |
| --- | --- |
| UpdatePendingWindow | Update the list of pending changes when a task completes. |
| OnChangeContentsPendingWindow | Update the content of a pending changeset with the result of the task upon completion. |
| OnIncomingPendingWindow | Update incoming changes window with the result of the task upon completion. |
| OnChangeSetsPendingWindow | Update the pending changesets with the result of the task upon completion. |
| OnGotLatestPendingWindow | Refreshes the incoming and pensing changes window upon task completion. |
| OnSubmittedChangeWindow | Refresh the submit window with the result of the task upon completion. |
| OnAddedChangeWindow | Refresh windows upon task completion. |
| OnCheckoutCompleted | Show or update the checkout failure window. |
