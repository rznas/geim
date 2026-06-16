<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AsyncInstantiateOperation_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides a generic method to instantiate operations asynchronously on a UnityEngine.Object.

The operation is returned by Object.InstantiateAsync.

### Properties

| Property | Description |
| --- | --- |
| Result | If isDone is true, then Result contains instantiated objects of type T. The size of the array is the same as the 'count' argument for the InstantiateAsync method call. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| Result | If isDone is true, then Result contains the instantiated objects. The size of the array is the same as the 'count' argument for the InstantiateAsync call. |
| allowSceneActivation | Allow Scenes to be activated as soon as it is ready. |
| isDone | Has the operation finished? (Read Only) |
| priority | Priority lets you tweak in which order async operation calls will be performed. |
| progress | What's the operation's progress. (Read Only) |

### Public Methods

| Method | Description |
| --- | --- |
| Cancel | Method that cancels all the operations connected to the asynchronous instantiation if the operation is not done yet, that is, where isDone == false. This method deletes all the objects created so far, which are not visible to users while they're not activated, and stops all the internal jobs connected to the operation. |
| IsWaitingForSceneActivation | This property can be true only if allowSceneActivation is set to false, and if the operation has already completed everything needed for object instantiation except for the main thread integrating the objects and calling their Awake methods. Users can set allowSceneActivation to true to trigger the activation or call the Cancel method to cancel instantiation. |
| WaitForCompletion | Blocks the current thread until this operation is done. |

### Static Methods

| Method | Description |
| --- | --- |
| GetIntegrationTimeMS | Gets the target duration allowed per frame to integrate instantiated object operations, in milliseconds. |
| SetIntegrationTimeMS | Sets the target duration allowed per frame to integrate instantiated object operations, in milliseconds. |

### Events

| Event | Description |
| --- | --- |
| completed | Raised when this AsyncOperation operation has completed. |
