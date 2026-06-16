<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AsyncOperation-completed.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The AsyncOperation which has completed. This may be useful if you want to use the same event handler function with multiple different operations. |

### Description

Raised when this AsyncOperation operation has completed.

This event offers an alternative to yielding on the operation in a coroutine, or to checking the AsyncOperation.isDone property every frame. It's the most efficient choice when you don't otherwise need to regularly run code based on the operation state - for example, if you don't plan to update a progress bar with the operation's AsyncOperation.progress.

The event fires at the same point in the frame as when coroutines are executed, just after MonoBehaviour.Update methods have been run.

An event handler that is registered in the same frame as the call that creates it will be invoked next frame, even if the operation is able to complete synchronously. If a handler is registered after the operation has completed and has already invoked the complete event, the handler will be called immediately and synchronously.

The following example imagines a game which loads parts of the game world additively. To prevent the player from seeing into the next section before it has finished loading, a door is used to block the player's progress. Once the next section has finished loading, the door's opening animation should play. The example component would be placed on a trigger volume in front of the door, so that it is activated when the player approaches the door.

```csharp
using UnityEngine;
using UnityEngine.SceneManagement;public class LoadNextAreaTrigger : MonoBehaviour
{
    public string nextAreaSceneName;
    public Animator door;    public void OnTriggerEnter(Collider other)
    {
        if (!enabled || other.tag != "Player") return;        var loadOp = SceneManager.LoadSceneAsync(nextAreaSceneName, LoadSceneMode.Additive);
        loadOp.completed += AreaFinishedLoading;        // Disable this component so the trigger does not fire a second time
        enabled = false;
    }    private void AreaFinishedLoading(AsyncOperation op)
    {
        door.SetTrigger("UnlockAndOpen");
    }
}
```
