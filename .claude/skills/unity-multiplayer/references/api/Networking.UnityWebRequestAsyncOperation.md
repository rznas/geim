<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequestAsyncOperation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Asynchronous operation object returned from UnityWebRequest.SendWebRequest().

You can yield until it continues, register an event handler with AsyncOperation.completed, or manually check whether it's done (AsyncOperation.isDone) or progress (AsyncOperation.progress).

### Properties

| Property | Description |
| --- | --- |
| webRequest | Returns the associated UnityWebRequest that created the operation. |

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
