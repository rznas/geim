<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabaseLoadOperation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This operation allows you to track the progress and access the result of an asynchronus AssetDatabase load operation.

### Properties

| Property | Description |
| --- | --- |
| LoadedObject | The resulting Object of the asynchronus load operation. This will be null on failure. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| allowSceneActivation | Allow Scenes to be activated as soon as it is ready. |
| isDone | Has the operation finished? (Read Only) |
| priority | Priority lets you tweak in which order async operation calls will be performed. |
| progress | What's the operation's progress. (Read Only) |

### Events

| Event | Description |
| --- | --- |
| completed | Raised when this AsyncOperation operation has completed. |
