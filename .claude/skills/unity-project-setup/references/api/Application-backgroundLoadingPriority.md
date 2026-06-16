<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-backgroundLoadingPriority.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Priority of background loading thread.

Lets you control how long it takes to load data asynchronously vs performance impact on the game while loading in the background.

**Note**: This setting has no effect in the Editor; it only applies in a built Player.

Asynchronous load functions that load objects (Resources.LoadAsync, AssetBundle.LoadAssetAsync, AssetBundle.LoadAllAssetAsync), scenes (SceneManager.LoadSceneAsync) do data read and deserialization on a separate background loading thread and object integration on a main thread. *Integration* depends on an object type and for textures, meshes means uploading data to the GPU, audio clips prepare data for playing.

To avoid hiccups we limit *integration* time on a main thread depending on backgroundLoadingPriority value:
 - ThreadPriority.Low - 2ms
 - ThreadPriority.BelowNormal - 4ms
 - ThreadPriority.Normal - 10ms
 - ThreadPriority.High - 50ms
 This value defines the maximum time all asynchronous operations can spend within a single frame on a main thread.

The default value is ThreadPriority.BelowNormal, however some platforms override it:

- Universal Windows Platform - ThreadPriority.High
- Consoles - ThreadPriority.Normal

Background loading thread uses backgroundLoadingPriority directly. This property's value is passed to the operating system as that thread's scheduling priority, with no conversion or indirection.

The Profiler marker **Application.Integrate Assets in Background** lets you optimize background loading.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Example1()
    {
        // Load as much data as possible, as a result frame rate will drop.
        // Good for fast loading when showing progress bars.        Application.backgroundLoadingPriority = ThreadPriority.High;
    }    void Example2()
    {
        // Load data very slowly and try not to affect performance of the game.
        // Good for loading in the background while the game is playing.        Application.backgroundLoadingPriority = ThreadPriority.Low;
    }
}
```

Additional resources: ThreadPriority enum, AsyncOperation.priority.
