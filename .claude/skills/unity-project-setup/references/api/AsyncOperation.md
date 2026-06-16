<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AsyncOperation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Suspends a coroutine until an asynchronous operation completes.

`WaitForSecondsRealtime` can only be used with a `yield` statement in coroutines.

You can `yield` until the `AsyncOperation` completes, check whether it's done with AsyncOperation.isDone, or check on its progress with AsyncOperation.progress.

Additional resources: SceneManager.LoadSceneAsync, AssetBundle.LoadAssetAsync, Resources.LoadAsync.

```csharp
using System.Collections;
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public void Start()
    {
        StartCoroutine(Example_AsyncTests());
    }    public IEnumerator Example_AsyncTests()
    {
        Debug.Log("Start of AsyncLoad Example");
        
        var load = UnityEngine.Resources.LoadAsync("");
        yield return load;
        yield return null;
        
        Debug.Log("End of AsyncLoad Example");
    }
}
```

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

### Inherited Members
