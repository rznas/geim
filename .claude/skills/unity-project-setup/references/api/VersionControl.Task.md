<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Task.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A Task describes an instance of a version control operation.

An object of this type allows you to process operations such as Provider.Checkout, Provider.GetLatest, and Provider.Submit. Unity creates this item almost every time you ask Provider to perform an action. Task objects, that version control operations return, execute in the background and don't always finish immediately, use Task.Wait if you need to wait for them to finish.

### Properties

| Property | Description |
| --- | --- |
| assetList | The result of some types of tasks. |
| changeSets | List of changesets returned by some tasks. |
| description | A short description of the current task. |
| messages | May contain messages from the version control plugins. |
| progressPct | A progress percentage for the current task. |
| resultCode | Some task return result codes, these are stored here. |
| secondsSpent | Total time spent in task since the task was started. |
| success | Get whether or not the task was completed succesfully. |
| text | Will contain the result of the Provider.ChangeSetDescription task. |

### Public Methods

| Method | Description |
| --- | --- |
| SetCompletionAction | Upon completion of a task a completion task will be performed if it is set. |
| Wait | A blocking wait for the task to complete. |
